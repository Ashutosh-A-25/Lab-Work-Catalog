// Uniform Cost Searching Algorithm
// 2D Array Form
#include "iostream"
#include "queue"
#include "vector"
#include "math.h"
#include "algorithm"
#define inf 10e6
using namespace std;

void path(int *parent,vector<int> &ar,int end){
  if(parent[end] == end){
    ar.push_back(end);
    return;
  }
  else{
    ar.push_back(end);
    path(parent,ar,parent[end]);
  }
}

void pathOut(vector<int> ar,int *cost){
  for(int i=1;i<ar.size();++i)
    cout<<cost[ar[i]]-cost[ar[i-1]]<<" ";
  cout<<"\n";
}

void uniCostSearch(int *ar,int len,int start,int end,int *parent,int *cost){
  cost[1]=0;
  int cur=1,left=2,right=3;
  while((cur*2+1)<=len){
    if(cost[left]> cost[cur]+ar[left]){
      cost[left] = cost[cur]+ar[left];
      parent[left] = cur;
    }

    if(cost[right]> cost[cur]+ar[right]){
      cost[right] = cost[cur]+ar[right];
      parent[right] = cur;
    }

    cur++;

    if(left == end || right == end)
      break;
    left=cur*2;
    right=cur*2+1;
  }
}

int main(){
  int n,len,start,end;
  vector<int> ans;
  cin>>n;
  len = pow(2,n+1) - 1;
  cout<<len<<"\n";
  int *ar=new int[len];
  int *parent = new int[len];
  int *cost = new int[len];

  for(int i=1;i<=len;++i){
    cin>>ar[i];
    parent[i]=i,cost[i]=inf;
  }
  cin>>start>>end;
  uniCostSearch(ar,len,start,end,parent,cost);
  path(parent,ans,end);
  reverse(ans.begin(),ans.end());
  pathOut(ans,cost);
  cout<<cost[end]<<"\n";
}
