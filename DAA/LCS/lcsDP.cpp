// longest common subsequence using DP
// logic vid :- https://www.youtube.com/watch?v=NnD96abizww&t=206s
#include "iostream"
using namespace std;

int solve(string a,string b,int n1,int n2){
    int **ans = new int*[n1+1]; // Storing the substring tally

    for(int i=0;i<=n1;i++){
        ans[i] = new int[n2+1];
        for(int j=0;j<=n2;j++){
            if(i == 0 || j == 0)
                ans[i][j] = 0;
            else if(a[i-1] == b[j-1])
                ans[i][j] = ans[i-1][j-1] + 1;
            else
                ans[i][j] = max(ans[i-1][j],ans[i][j-1]);
        }
    }
    return ans[n1][n2];
}

int main(){
    string a,b;
    cin>>a>>b;

    int len1,len2;
    len1 = a.length();
    len2 = b.length();

    int out = solve(a,b,len1,len2);

    cout<<out<<"\n";
}
