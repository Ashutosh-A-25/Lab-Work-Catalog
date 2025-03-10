// Matrix Multiplication using strassen's method using double pointers
// vid :- https://www.youtube.com/watch?v=0oJyNmEbS4w 
#include "iostream"
#include "chrono"
#include "cmath"
using namespace std;

void create(int** &ar,int n){
  ar = new int*[n];
  for(int i=0;i<n;i++)
    ar[i] = new int[n];
}

void display(int **ar,int n){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++)
      cout<<ar[i][j]<<" ";
    cout<<"\n";
  }
}

void add(int** &a,int** &b,int** &c,int n){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++)
      c[i][j] = a[i][j] + b[i][j];
  }
}

void sub(int** &a,int** &b,int** &c,int n){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++)
      c[i][j] = a[i][j] - b[i][j];
  }
}

void solve(int** &a,int** &b,int** &c,int n){
  if(n == 1){
    c[0][0] = a[0][0] * b[0][0];
    return;
  }
  else{
    int k = n / 2;
    int **a11,**a12,**a21,**a22;
    int **b11,**b12,**b21,**b22;
    int **c11,**c12,**c21,**c22;
    int **p1,**p2,**p3,**p4,**p5,**p6,**p7;
    int **aResult,**bResult;
    create(a11,k);create(a12,k);create(a21,k);create(a22,k);
    create(b11,k);create(b12,k);create(b21,k);create(b22,k);
    create(c11,k);create(c12,k);create(c21,k);create(c22,k);
    create(p1,k);create(p2,k);create(p3,k);create(p4,k);create(p5,k);create(p6,k);create(p7,k);
    create(aResult,k);create(bResult,k);
    int i,j;

    for (i = 0; i < k; i++)
        {
            for (j = 0; j < k; j++)
            {
                a11[i][j] = a[i][j];
                a12[i][j] = a[i][j + k];
                a21[i][j] = a[i + k][j];
                a22[i][j] = a[i + k][j + k];

                b11[i][j] = b[i][j];
                b12[i][j] = b[i][j + k];
                b21[i][j] = b[i + k][j];
                b22[i][j] = b[i + k][j + k];
            }
        }

        add(a11, a22, aResult, k);
        add(b11, b22, bResult, k);
        solve(aResult, bResult, p1, k);
        add(a21, a22, aResult, k);
        solve(aResult, b11, p2, k);
        sub(b12, b22, bResult, k);
        solve(a11, bResult, p3, k);
        sub(b21, b11, bResult, k);
        solve(a22, bResult, p4, k);
        add(a11, a12, aResult, k);
        solve(aResult, b22, p5, k);
        sub(a21, a11, aResult, k);
        add(b11, b12, bResult, k);
        solve(aResult, bResult, p6, k);
        sub(a12, a22, aResult, k);
        add(b21, b22, bResult, k);
        solve(aResult, bResult, p7, k);
        add(p3, p5, c12, k);
        add(p2, p4, c21, k);
        add(p1, p4, aResult, k);
        add(aResult, p7, bResult, k);
        sub(bResult, p5, c11, k);
        add(p1, p3, aResult, k);
        add(aResult, p6, bResult, k);
        sub(bResult, p2, c22, k);


    for (i = 0; i < k; i++)
        {
            for (j = 0; j < k; j++)
            {
                c[i][j] = c11[i][j];
                c[i][j + k] = c12[i][j];
                c[i + k][j] = c21[i][j];
                c[i + k][j + k] = c22[i][j];
            }
        }
        //  display(a11,k);
        //  display(a12,k);display(a21,k);display(a22,k);
    // display(b11,k);display(b12,k);display(b21,k);display(b22,k);
  }
 
}

void strassens(int** &a,int** &b,int n){
  int **c;
  create(c,n);
  solve(a,b,c,n);
  display(c,n);
}

void input(int** &ar,int n){
  for(int i=0;i<n;i++)
    for(int j=0;j<n;j++)
      cin>>ar[i][j];
}

int main(){
  int n;
  cin>>n;

  int **a,**b;
  create(a,n);
  create(b,n);

  input(a,n);
  input(b,n);

  // display(a,n);
  // display(b,n);
  
  strassens(a,b,n);

}
