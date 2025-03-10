// optimizing insertion sort with the help of binary search
#include "iostream"
using namespace std;

void print(int *ar,int n){
  for(int i=0;i<n;++i)
    cout<<ar[i]<<" ";
  cout<<"\n";
}

int binarySearch(int *ar,int start,int end,int item){
  while(start<=end){
    int mid = (start + end)/2;
    if(item == ar[mid])
      return mid + 1;
    else{
      if(item > ar[mid])
        start = mid + 1;
      else
        end = mid - 1;
    }
  }
  return start;
}

void insertionSort(int *ar,int n){
  int j,key,loc;
  for(int i=1;i<n;++i){
    j = i-1;
    key = ar[i];
    loc = binarySearch(ar,0,j,key);

    while(j >= loc){
      ar[j+1] = ar[j];
      j--;
    }
    ar[j+1] = key;
  }
}

int main(){
  int n;
  cin>>n;

  int *ar = new int[n];
  for(int i=0;i<n;++i)
    cin>>ar[i];

  insertionSort(ar,n);
  print(ar,n);
}
