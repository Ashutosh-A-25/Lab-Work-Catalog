// finding max & min using divide & conquer
#include "iostream"
#include "climits"
using namespace std;

void divideConquer(int *ar,int start,int end,int &min,int &max){
  if(start==end){
    if(ar[start]>max)
      max = ar[start];
    if(min<ar[end])
      min = ar[end];
    return;
  }
  if(end-start==1){
    if(ar[start]<ar[end]){
      if(ar[start]<min)
        min = ar[start];
      if(ar[end]>max)
        max = ar[end];
    }
    else{
      if(ar[end]<min)
        min = ar[end];
      if(ar[start]>max)
        max = ar[start];
    }
    return;
  }

  int mid = (start+end) /2;
  divideConquer(ar,start,mid,min,max);
  divideConquer(ar,mid+1,end,min,max);
}

void print(int *ar,int n){
  for(int i=0;i<n;++i)
    cout<<ar[i]<<" ";
  cout<<"\n";
}

int main(){
  int n,min=INT_MAX,max=INT_MIN;
  cout<<"total elements : ";
  cin>>n;
  // cout<<min<<" "<<max<<"\n";
  int *ar = new int[n];
  for(int i=0;i<n;++i)
    // ar[i]=rand()%1000;
    cin>>ar[i];
  print(ar,n);
  divideConquer(ar,0,n-1,min,max);
  cout<<min<<"\n"<<max<<"\n";
}
