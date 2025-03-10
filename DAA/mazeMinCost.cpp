// minCost Path in a Maze/Matrix using recursion and Dynamic Progm
// DP method vid :- https://www.youtube.com/watch?v=lBRtnuxg-gU
#include "iostream"
#include "stdlib.h"
#include "climits"
using namespace std;

int findMinCost(int **ar,int n,int m){
  if(n==0 || m==0)
    return INT_MAX;
  if(m==1 && n==1)
    return ar[0][0];
  
  return (min(findMinCost(ar,n-1,m),findMinCost(ar,n,m-1))+(ar[n-1][m-1]));
}

int minCost(int **ar,int n,int m){
  if(n==0 && m==0)
    return 0;
  else
    return findMinCost(ar,n,m);
}

int minCostDP(int **ar,int **lookup,int m,int n){
  if(n==0 && m==0)
    return 0;
  else{
    for(int i=0;i<m;i++){
      for(int j=0;j<n;j++){
        lookup[i][j] = ar[i][j];

        if(i==0 && j>0)
          lookup[0][j] += lookup[0][j-1];
        else if(j==0 && i>0)
          lookup[i][0] += lookup[i-1][0];
        else if(i > 0 && j>0 )
          lookup[i][j] += min(lookup[i-1][j],lookup[i][j-1]);
      }
    }
  }
  return lookup[m-1][n-1];
}

int main(){
  int n,m;
  cin>>n>>m;

  int **ar = new int*[n];
  int **sample = new int*[n];

  for(int i=0;i<n;i++){
    ar[i] = new int[n];
    sample[i] = new int[n];
    for(int j=0;j<m;j++)
      cin>>ar[i][j];
  }

  // cout<<minCost(ar,n,m)<<"\n";
  cout<<minCostDP(ar,sample,n,m)<<"\n";

}
