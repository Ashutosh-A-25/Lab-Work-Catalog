// minimax with alpha-beta pruning
// explaination video :- https://www.youtube.com/watch?v=l-hh51ncgDI&ab_channel=SebastianLague
#include "iostream"
#include "climits"
using namespace std;

int minimax(int *ar,int index,bool isMax,int depth,int height,int alpha,int beta){
  if(depth == height)
    return ar[index]; // after reaching leaf node
  
  else{
    if(isMax){ // max player
      int val = INT_MIN;
      for(int i=0;i<2;i++){
        int k = minimax(ar,index*2+i,false,depth+1,height,alpha,beta);
        val = max(val,k);
        alpha = max(alpha,val);
      
        if(alpha >= beta) // pruning condition
          break; // pruning
      }
      return val;
    }

    else{ // min player
      int val = INT_MAX;
      for(int i=0;i<2;i++){
        int k = minimax(ar,index*2+i,true,depth+1,height,alpha,beta);
        val = min(val,k);
        beta = min(beta,val);

        if(alpha >= beta) // pruning condition
          break; // pruning
      }
      return val;
    }
  }
}

int log2(int n){
  return (n == 1) ? 0 : (1 + log2(n/2));
}

int main(){
  int n,height;
  cin>>n;

  height = log2(n);

  int ar[n];

  for(int i=0;i<n;i++)
    cin>>ar[i];
  
  cout<<"Optimal Value : "<<minimax(ar,0,true,0,height,INT_MIN,INT_MAX)<<"\n";
}