#include "iostream"
#include "algorithm"
#include "time.h"
using namespace std;

void insertionSort(int *ar,int n){
  int j,key;
  for(int i=1;i<n;++i){
    j = i-1;
    key = ar[i];
    while(j>=0 && ar[j] > key){
      ar[j+1] = ar[j];
      j--;
    }
    ar[j+1] = key;
  }
}

void print(int *ar,int n){
  for(int i=0;i<n;++i)
    cout<<ar[i]<<" ";
  cout<<"\n";
}

int main(){
  srand(time(0));
  int n;
  cin>>n;

  int *ar = new int[n];
  for(int i=0;i<n;++i)
    ar[i] = rand() % 1000;
  
  // print(ar,n);
  clock_t start = clock();
  sort(ar,ar+n);
  // insertionSort(ar,n);
  print(ar,n);
  cout.precision(10);
  cout<<fixed<<float(clock() - start) / CLOCKS_PER_SEC <<"\n";
}

