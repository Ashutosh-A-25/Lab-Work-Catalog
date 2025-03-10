// my solution to the knapsack problem
#include "iostream"
#include "algorithm"
#include "vector"
using namespace std;

struct object{
	int weight,cost;
	int value;
};

bool higher(object a,object b){
	return a.value > b.value;
}

void print(object *ar,int n){
	for(int i=0;i<n;++i)
		cout<<ar[i].cost<<" "<<ar[i].weight<<" "<<ar[i].value<<"\n";
}

void solve(object *ar,int cap,int n){
	int cur,profit;
	cur = profit = 0;
	for(int i=0;i<n;++i){
		if(cur <= cap){
			// if(cur == cap)
			// 	break;
			if(ar[i].weight + cur < cap){
				profit += ar[i].cost;
				cur += ar[i].weight;
			}
			else{
				profit += ar[i].value * (cap - cur);
				cur += cap - cur;
				break;
			}
		}
		// cout<<profit<<"\n";
	}
	cout<<profit<<"\n";
}

int main(){
	int n,capacity;
	cin>>capacity>>n;

	object *bag = new object[n];

	for(int i=0;i<n;++i){
		cin>>bag[i].weight;
	}

	for(int i=0;i<n;++i){
		cin>>bag[i].cost;
		bag[i].value = bag[i].cost / bag[i].weight;
	}

	sort(bag,bag+n,higher);
	// print(bag,n);
	solve(bag,capacity,n);
}
