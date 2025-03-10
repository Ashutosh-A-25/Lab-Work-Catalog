// matrix multiplication using divide and conquer
// vid :- https://www.youtube.com/watch?v=0oJyNmEbS4w
#include "iostream"
#include "chrono"
#include "iomanip"
#include "time.h"
using namespace std;
using namespace std::chrono;

void input(int **ar, int n)
{
  for (int i = 0; i < n; ++i)
  {
    ar[i] = new int[n];
    for (int j = 0; j < n; ++j)
      ar[i][j] = rand() % 100;
  }
}

void print(int **ar, int n)
{
  for (int i = 0; i < n; ++i)
  {
    for (int j = 0; j < n; ++j)
      cout << ar[i][j] << " ";
    cout << "\n";
  }
}

void mulMatDC(int **ar, int **arr, int **result, int a1, int b1, int a2, int b2, int n)
{
  for (int i = 0; i < n; ++i)
  {
    for (int j = 0; j < n; ++j)
    {
      for (int k = 0; k < n; ++k)
      {
        result[a1 + i][b2 + j] += ar[a1 + i][b1 + k] * arr[a2 + k][b2 + j];
      }
    }
  }
}

void DnC(int **ar, int **arr, int **result, int a1, int b1, int a2, int b2, int n)
{
  if (n == 2)
  {
    mulMatDC(ar, arr, result, a1, b1, a2, b2, n);
    return;
  }
  else
  {
    DnC(ar, arr, result, a1, b1, a2, b2, n / 2);
    DnC(ar, arr, result, a1, b1 + n / 2, a2 + n / 2, b2, n / 2);
 
    DnC(ar, arr, result, a1, b1, a2, b2 + n / 2, n / 2);
    DnC(ar, arr, result, a1, b1 + n / 2, a2 + n / 2, b2 + n / 2, n / 2);

    DnC(ar, arr, result, a1 + n / 2, b1, a2, b2, n / 2);
    DnC(ar, arr, result, a1 + n / 2, b1 + n / 2, a2 + n / 2, b2, n / 2);

    DnC(ar, arr, result, a1 + n / 2, b1, a2, b2 + n / 2, n / 2);
    DnC(ar, arr, result, a1 + n / 2, b1 + n / 2, a2 + n / 2, b2 + n / 2, n / 2);
  }
}

void mulMat(int **ar, int **arr, int n)
{
  int **arrr = new int *[n];
  for (int i = 0; i < n; ++i)
  {
    arrr[i] = new int[n];
    for (int j = 0; j < n; ++j)
    {
      arrr[i][j] = 0;
      for (int k = 0; k < n; ++k)
        arrr[i][j] += ar[i][k] * arr[k][j];
    }
  }

  // print(arrr,n);
}

int main()
{
  srand(time(0));
  int n;
  cin >> n;

  int **ar = new int *[n];
  int **arr = new int *[n];
  int **result = new int *[n];

  input(ar, n);
  input(arr, n);

  for (int i = 0; i < n; ++i)
  {
    result[i] = new int[n];
    for (int j = 0; j < n; ++j)
      result[i][j] = 0;
  }

  // clock_t start = clock();
  auto start = high_resolution_clock::now();
  mulMat(ar, arr, n);
  cout.precision(10);

  cout << "Using Normal Matrix Multiplication\n";
  // cout << fixed << (double(clock()) - double(start)) / 1000000000 << "\n";
  auto stop = high_resolution_clock::now();
  auto duration = duration_cast<microseconds>(stop - start);
  cout << "Time taken by function: "<< duration.count() << " microseconds" << endl;

  // clock_t start1 = clock();
  auto start1 = high_resolution_clock::now();
  DnC(ar, arr, result, 0, 0, 0, 0, n);
  cout << "Matrix Multiplication using divide & conquer\n";
  // cout << fixed << float(clock() - start1) / 1000000000 << "\n";
  auto stop1 = high_resolution_clock::now();
  auto duration1 = duration_cast<microseconds>(stop1 - start1);
  cout << "Time taken by function: "<< duration1.count() << " microseconds" << endl;
  print(result,n);
}
