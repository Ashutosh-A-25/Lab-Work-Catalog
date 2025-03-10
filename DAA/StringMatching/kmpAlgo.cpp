// KMP Algo
// Video Link :- https://www.youtube.com/watch?v=V5-7GzOfADQ
#include "iostream"
using namespace std;

void print(int *ar,int n){
  for(int i=0;i<n;i++)
    cout<<ar[i]<<" ";
  cout<<"\n";
}

void encode(string ar,int *p,int n){
  p[0] = 0;
  int index,val;
  index = val = 0;

  for(int i=1;i<n;i++){
    if(ar[index] == ar[i]){
        // cout<<ar[index-1]<<"\n";
        p[i] = val;
        index++;
        val++;
    }
    else{
      p[i] = 0;
      index = val = 0;
    }
  }
}

void kmp(string ar,string ar1,int n1,int n2){
  int *p = new int[n2];
  encode(ar1,p,n2);
  int j = 0;

  for(int i=0;i<n1;){
    if(ar[i] == ar1[j]){
      i++;j++;
    }
    else{
      if(j == 0)
        i++;
      else
        j = p[j];
    }
    if(j == n2 ){
      cout<<"Found at "<<i-j+1<<"\n";
      break;
    }
  } 
}

int main(){
  string a,b;
  cin>>a>>b;

  int len1 = a.length();
  int len2 = b.length();

  int *p = new int[len2];

  kmp(a,b,len1,len2);
  encode(b,p,len2);
  print(p,len2);
}