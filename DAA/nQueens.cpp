// N Queens Problem
#include "iostream"
using namespace std;

void print(int **board,int n){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++)
      cout<<board[i][j]<<" ";
    cout<<"\n";
  }
}

bool valid(int **board,int curRow,int curCol,int n){
  // checking the rows
  for(int i=0;i<n;i++){
    if(i != curCol && board[curRow][i])
      return false;
  }

  // checking the columns
  for(int i=0;i<n;i++){
    if(i != curRow && board[i][curCol])
      return false;
  }

  // checking the lower main diagonal
  int i,j;
  for(i=curRow+1,j=curCol+1;i<n && j < n;i++,j++){
    if(board[i][j])
      return false;
  }

  // checking the upper main diagonal 
  for(int i=curRow-1,j=curCol-1;i>=0 && j>=0;i--,j--){
    if(board[i][j])
      return false;
  }

  // checking the lower  secondary diagonal
  for(int i=curRow-1,j=curCol+1;i>=0 && j < n;i--,j++){
    if(board[i][j])
      return false;
  }

  // checking the upper secondary diagonal
  for(int i=curRow+1,j=curCol-1;i<n && j>=0;i++,j--){
    if(board[i][j])
      return false;
  }
  return true;
}

void nQueen(int **board,int curRow,int n){
  if(curRow == n){
    print(board,n);
    cout<<"\n"; // for separating multiple result if it exists
    return;
  }
  else{
    for(int i=0;i<n;i++){
      if(valid(board,curRow,i,n)){
        board[curRow][i] = 1;
        nQueen(board,curRow+1,n);
        board[curRow][i] = 0;
      }
    }
  }
}

int main(){
  int n;
  cin>>n;

  int **board = new int*[n];

  for(int i=0;i<n;i++){
    board[i] = new int[n];
    for(int j=0;j<n;j++)
      board[i][j] = 0;
  }

  nQueen(board,0,n);
}
