// longest common subsequence using recursion
#include "iostream"
using namespace std;

int solve(string a,string b,int n1,int n2){
	if(n1 == 0 || n2 == 0)
		return 0;
	if(a[n1-1] == b[n2-1])
		return solve(a,b,n1-1,n2-1) + 1;
	else
		return max(solve(a,b,n1-1,n2),solve(a,b,n1,n2-1));
}

int main(){
	string a,b;
	cin>>a>>b;

	int len1,len2;

	len1 = a.length();
	len2 = b.length();

	cout<<solve(a,b,len1,len2)<<"\n";
}
