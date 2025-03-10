// Largest Sum Contiguous Subarray
#include "iostream"
#define INF  10e6
using namespace std;

void print(int *ar,int start,int end){
  for(int i=start;i<=end;i++)
    cout<<ar[i]<<" ";
  cout<<"\n";
}

// brute force approach
// O(n^2)
int brute(int *ar,int n){
  int max = -INF,sum,start,end;
  for(int i=0;i<n;i++){
    sum = 0;
    for(int j=i;j<n;j++){
      sum += ar[j];
      if(sum > max){
        max = sum;
        start = i;
        end = j;
      }
    }
  }
  print(ar,start,end);
  return max;
}

// Using DP
// O(n)
int dp(int *ar,int n){
  int table[n];
  int out ;
  out = table[0] = ar[0];
  for(int i=1;i<n;i++){
    table[i] = max(ar[i],ar[i] + table[i-1]);
    out = max(out,table[i]);
  }
  return out;
}

// Using Kadane's Algo
// O(n)
int kadane(int *ar,int n){
  int out,cur,start,end,flag = 0;
  out = -INF,cur = 0;
  for(int i=0;i<n;i++){
    cur += ar[i];
    if(cur > out){
      out = cur;
      if(!flag){
        start = i;
        flag = 1;
      }
      if(flag)
        end = i;
    }
    if(cur < 0){
      cur = 0;
      if(flag)
        flag = 0;
    }
  }
  print(ar,start,end);
  return out;
}

int main(){
  int n;
  cin>>n;

  int *ar = new int[n];

  for(int i=0;i<n;i++)
    cin>>ar[i];

  cout<<brute(ar,n)<<"\n";
  cout<<dp(ar,n)<<"\n";
  cout<<kadane(ar,n)<<"\n";
}
