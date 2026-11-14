"""
Assignment 4 CO4 reproducibility script.
Install: pip install numpy pandas scipy scikit-learn matplotlib mlxtend psutil
Run clustering experiments directly. For transaction mining, download UCI Online Retail
and set RETAIL_CSV to the local CSV path below.
"""
import os, time, tracemalloc, itertools
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import make_blobs, make_moons, load_iris
from sklearn.cluster import KMeans, AgglomerativeClustering
from sklearn.mixture import GaussianMixture
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import adjusted_rand_score, silhouette_score

SEED = 42
np.random.seed(SEED)

def make_data():
    d1, y1 = make_blobs(n_samples=500,
        centers=[(-5,-5),(0,5),(5,-4)],
        cluster_std=[.75,.85,.70], random_state=SEED)
    d2, y2 = make_moons(n_samples=500, noise=.07, random_state=SEED)
    rng = np.random.default_rng(SEED)
    a = rng.normal((-4,0),(.25,.25),(160,2))
    b = rng.normal((0,0),(.8,.8),(160,2))
    c = rng.normal((4,0),(1.3,.55),(155,2))
    noise = rng.uniform((-7,-4),(7,4),(25,2))
    d3 = np.vstack([a,b,c,noise])
    y3 = np.array([0]*160+[1]*160+[2]*155+[-1]*25)
    return {'D1':(d1,y1,3),'D2':(d2,y2,2),'D3':(d3,y3,3)}

def run_clustering():
    rows=[]
    for name,(X,y,k) in make_data().items():
        models=[
            ('K-means',KMeans(n_clusters=k,random_state=SEED,n_init=10)),
            ('Single',AgglomerativeClustering(n_clusters=k,linkage='single')),
            ('Complete',AgglomerativeClustering(n_clusters=k,linkage='complete')),
            ('Average',AgglomerativeClustering(n_clusters=k,linkage='average')),
            ('EM-GMM',GaussianMixture(n_components=k,random_state=SEED,n_init=5))
        ]
        fig,ax=plt.subplots(1,2,figsize=(9,4))
        ax[0].scatter(X[:,0],X[:,1],c=y,s=12); ax[0].set_title(name+' truth')
        for method,model in models:
            start=time.perf_counter()
            labels=model.fit_predict(X) if hasattr(model,'fit_predict') else model.fit(X).predict(X)
            elapsed=time.perf_counter()-start
            ari=adjusted_rand_score(y,labels)
            sil=silhouette_score(X,labels) if len(set(labels))>1 else np.nan
            rows.append([name,method,ari,sil,elapsed])
            if method=='K-means':
                ax[1].scatter(X[:,0],X[:,1],c=labels,s=12)
                ax[1].set_title('K-means')
        fig.tight_layout(); fig.savefig(name+'_clusters.png',dpi=150); plt.close(fig)
    pd.DataFrame(rows,columns=['data','method','ARI','silhouette','seconds']).to_csv('B1_results.csv',index=False)
    print(pd.DataFrame(rows,columns=['data','method','ARI','silhouette','seconds']).to_string(index=False))

def run_k_selection():
    d1=make_data()['D1'][0]
    iris=load_iris().data
    iris_z=StandardScaler().fit_transform(iris)
    allrows=[]
    for name,X in [('D1',d1),('Iris_raw',iris),('Iris_standardised',iris_z)]:
        for k in range(2,11):
            model=KMeans(n_clusters=k,random_state=SEED,n_init=10).fit(X)
            sil=silhouette_score(X,model.labels_)
            allrows.append([name,k,model.inertia_,sil])
    pd.DataFrame(allrows,columns=['data','k','SSE','silhouette']).to_csv('B2_k_selection.csv',index=False)
    stability=[]
    for name,X in [('D1',d1),('Iris_standardised',iris_z)]:
        for seed in range(20):
            model=KMeans(n_clusters=3,random_state=seed,n_init=1).fit(X)
            stability.append([name,seed,model.inertia_])
    pd.DataFrame(stability,columns=['data','seed','SSE']).to_csv('B2_stability.csv',index=False)
    print(pd.DataFrame(allrows).to_string(index=False))
    print(pd.DataFrame(stability).groupby('data').SSE.agg(['min','max','mean','std']))

def run_transaction_benchmark(csv_path, invoice_col='InvoiceNo',
                              item_col='StockCode', sample_seed=42):
    """
    Requires mlxtend. For UCI Online Retail, set invoice_col='InvoiceNo'
    and item_col='StockCode'. Cancelled invoices (InvoiceNo starting C)
    and non-positive quantities are removed when Quantity is available.
    """
    from mlxtend.preprocessing import TransactionEncoder
    from mlxtend.frequent_patterns import apriori, fpgrowth
    df=pd.read_excel(csv_path) if csv_path.lower().endswith(('.xlsx','.xls')) else pd.read_csv(csv_path,encoding='latin1')
    if 'Quantity' in df.columns:
        df=df[df['Quantity']>0]
    df=df[~df[invoice_col].astype(str).str.startswith('C')]
    tx=df.groupby(invoice_col)[item_col].apply(lambda s: sorted(set(s.astype(str)))).tolist()
    te=TransactionEncoder()
    matrix=te.fit(tx).transform(tx)
    basket=pd.DataFrame(matrix,columns=te.columns_)
    print('Transactions:',len(tx),'Distinct items:',len(te.columns_))
    result=[]
    for minsup in [.10,.05,.02,.01]:
        tracemalloc.start(); t0=time.perf_counter()
        apr=apriori(basket,min_support=minsup,use_colnames=True,verbose=0)
        ta=time.perf_counter()-t0; _,peak_a=tracemalloc.get_traced_memory(); tracemalloc.stop()
        tracemalloc.start(); t0=time.perf_counter()
        fp=fpgrowth(basket,min_support=minsup,use_colnames=True)
        tf=time.perf_counter()-t0; _,peak_f=tracemalloc.get_traced_memory(); tracemalloc.stop()
        def canon(frame):
            return {tuple(sorted(x)):round(float(s),12) for x,s in zip(frame.itemsets,frame.support)}
        ca,cf=canon(apr),canon(fp)
        print('support',minsup,'same itemsets?',ca==cf,'Apriori candidates: not exposed by mlxtend public API')
        result.append([minsup,len(apr),len(fp),ta,tf,peak_a/1e6,peak_f/1e6,ca==cf])
    pd.DataFrame(result,columns=['min_support','apriori_sets','fp_sets','apriori_seconds','fp_seconds','apriori_python_peak_MB','fp_python_peak_MB','identical']).to_csv('B3_support_benchmark.csv',index=False)
    # Fixed absolute support fraction on nested random samples.
    rng=np.random.default_rng(sample_seed); samp=[]
    for frac in [.10,.25,.50,1.0]:
        n=max(1,int(len(basket)*frac))
        idx=np.sort(rng.choice(len(basket),n,replace=False))
        sample=basket.iloc[idx]
        tracemalloc.start(); t0=time.perf_counter()
        out=fpgrowth(sample,min_support=.02,use_colnames=True)
        elapsed=time.perf_counter()-t0; _,peak=tracemalloc.get_traced_memory(); tracemalloc.stop()
        samp.append([frac,n,len(out),elapsed,peak/1e6])
    pd.DataFrame(samp,columns=['sample_fraction','transactions','frequent_itemsets','seconds','python_peak_MB']).to_csv('B3_sampling.csv',index=False)

if __name__ == '__main__':
    run_clustering()
    run_k_selection()
    # Uncomment and set the path after downloading UCI Online Retail:
    # run_transaction_benchmark('Online Retail.xlsx')
