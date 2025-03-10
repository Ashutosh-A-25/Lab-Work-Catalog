#include "stdio.h"
#include "stdlib.h"
#define sc scanf
#define pr printf

void push(int frame[],int *front,int *back,int n,int item){
	if(*front==(*back+1)%n) {
		pr("Full\n");
		return;
	}
	else{
		*back+=1;
		frame[*back]=item;
		if(*front==-1) *front=0;
	}
}

void pop(int frame[],int *front,int *back,int n){
	if(*front==-1){
		pr("Empty\n");
		return;
	}
	else{
		if(*front==*back){
			*front=*back=-1;
		}
		else{
			*front=(*front+1)%n;
		}
	}
}

int in(int frame[],int n,int item){
	for(int i=0;i<=n;++i){
		if(frame[i]==item) return 1;
	}return 0;
}

void print(int frame[],int n){
	for(int i=0;i<=n;++i)
		pr("%d ",frame[i]);
	pr("\n");
}

int main(){
	int n,f,hit=0,miss=0;sc("%d",&n);
	sc("%d",&f);
	f-=1;
	int ar[n],front=-1,back=-1;
	for(int i=0;i<n;++i) sc("%d",&ar[i]);
	int frame[f];
	for(int i=0;i<n;++i){
		if(in(frame,f,ar[i])){
			hit+=1;
		}
		else if(front==(back+1)%f){
			miss+=1;
			pop(frame,&front,&back,f);
			push(frame,&front,&back,f,ar[i]);
		}
		else{
			miss+=1;
			push(frame,&front,&back,f,ar[i]);
		}
	}print(frame,f);
	pr("%d %d\n",hit,miss);
}