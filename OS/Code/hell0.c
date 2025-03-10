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

int in(int ar[],int n,int item){
	for(int i=0;i<=n;++i){
		if(ar[i]==item) return 1;
	}return 0;
}

void print(int frame[],int f){
	for(int i=0;i<=f;++i)
		pr("%d ",frame[i]);
	pr("\n");
}

void fifo(int ar[],int n,int f){
	f-=1;
	int frame[f],hit=0,miss=0;
	for(int i=0;i<=f;++i) frame[i]=0;
	print(frame,f);
	int front,back;front=back=-1;
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
	}
	pr("Total Miss: %d\n",miss);
	pr("Total Hit: %d\n",hit);
	print(frame,f);
}


int main(){
	int f,n;
	pr("Total Pages: ");
	sc("%d",&n);
	pr("Total Frames: ");
	sc("%d",&f);
	int ar[n];
	for(int i=0;i<n;++i)
		sc("%d",&ar[i]);
	fifo(ar,n,f);
}