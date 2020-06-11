**Run Length Code For 100 Random Variable**
import numpy as np
def binary_rand(y,n):
    for i in range(n):
        if(y[i]>=0.5):
            y[i]=1
        else:
            y[i]=0 
    return y
y=np.random.rand(100)
z=binary_rand(y,100)
v=np.uint8(z)
print(v,end="\n")
def Compress_factor(v):
    d=[]
    m=0
    n=len(v)
    def compress(v,m):
        c=0
        k=check(v,m,c)
        if(k<n):
            compress(v,k) 
        else:
            l=max(d)
            b=np.log2(l)
            print(d,end="\n")
            if(np.round(len(d)*(b+1))<n):
                x=len(d)*(np.round(b+1))
                print("Compression Ratio",end="=")
                print(x/n)
            else:
                x=len(d)*(np.round(b+1))
                print(x,end="\n")
                print("Compression Ratio",end="=")
                print(x/n,end="\n")
                print("Compression is Negative")
    def check(v,i,c):
        if(i<n-1):
            if(v[i+1]==v[i]):
                c=c+1
                k=check(v,i+1,c)
                return k
            else:
                d.append(c+1)
                return i+1
        else:
            d.append(c+1)
            return i+1
    compress(v,m)  
Compress_factor(v)