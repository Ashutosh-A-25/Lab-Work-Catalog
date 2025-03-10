// String Matching Algorithm
// Video Link :- https://www.youtube.com/watch?v=qQ8vS2btsxI&t=819s
#include "iostream"
using namespace std;

int code(string ar,int start,int end){
  int out = 0;
  for(int i=0;i<end;i++){
    out += int(ar[i + start]);
  }
  return out;
}

int check(string ar,string pattern,int start,int n2){
  for(int i=0;i<n2;i++){
    if(ar[i + start] != pattern[i])
      return 0;
  }
  return 1;
}

void rabinKarp(string ar,string pattern,int n1,int n2){
  int key = code(pattern,0,n2);
  int flag = 0;

  for(int i=0;i<n1 - n2 + 1;i++){
    if(code(ar,i,n2) == key && check(ar,pattern,i,n2)){
      cout<<"Found at "<<i<<"\n";
      flag = 1;
      break;
    }
  }
  if(!flag)
    cout<<"Not Found\n";
}

int main(){
  string text,text1;
  cin>>text>>text1;

  int n1 = text.length();
  int n2 = text1.length();

  rabinKarp(text,text1,n1,n2);
  kmp(text,text1,n1,n2);
}
