// Blocks
// Processes
// Size for both
#include "stdio.h"
#include "stdlib.h"
#define pr printf
#define sc scanf
int remain;

struct block{
	int num,size,occ;
};

void br(){
	pr("__________________________________________________________________\n");
}

void swap(struct block *a,struct block *b){
	int t;
	t=a->num;a->num=b->num;b->num=t;
	t=a->size;a->size=b->size;b->size=t;
}

void sort(struct block bloc[],int b){
	int min;
	for(int i=0;i<b-1;++i){
		min=i;
		for(int j=i+1;j<b;++j){
				if(bloc[j].size<bloc[min].size) min=j;
		}swap(&bloc[i],&bloc[min]);
	}
}

void rsort(struct block bloc[],int b){
	int max;
	for(int i=0;i<b-1;++i){
		max=i;
		for(int j=i+1;j<b;++j){
				if(bloc[j].size>bloc[max].size) max=j;
		}swap(&bloc[i],&bloc[max]);
	}
}

void print(struct block proc[],int p,struct block bloc[],int b){
	br();
	pr("Process no.\tProcess_Size\tBlock no.\tBlock_Size\n");
	for(int i=0;i<p;++i){
		if(proc[i].occ==-1){
			pr("%d\t\t%d\t\t%d\t\t-1\n",proc[i].num,proc[i].size,proc[i].occ);
		}
		else{
			pr("%d\t\t%d\t\t%d\t\t%d\n",proc[i].num,proc[i].size,bloc[proc[i].occ].num,bloc[proc[i].occ].size);	
		}
	}
	br();
	pr("-1 : cannot be allocated\n");
	br();
	pr("Block memory left after allocation : %d\n",remain);
}

void first(struct block proc[],int p,struct block bloc[],int b){
	for(int i=0;i<p;++i){
		for(int j=0;j<b;++j){
			if(bloc[j].size>=proc[i].size && bloc[j].occ!=1){
				remain-=proc[i].size;
				proc[i].occ=j;
				bloc[j].occ=1;
				break;
			}
		}
	}
	print(proc,p,bloc,b);
}

void printar(struct block bloc[],int b){
	pr("Block no.\tBlock_Size\n");
	for(int i=0;i<b;++i){
		pr("%d\t\t%d\n",bloc[i].num,bloc[i].size);
	}
}


int main(){
	int b,p,ch;remain=0;
	pr("Number of block: ");
	sc("%d",&b);
	pr("Number of Processes: ");
	sc("%d",&p);
	struct block bk[b],proc[p];
	pr("Enter block size:\n");
	for(int i=0;i<b;++i){
		pr("Size of Block %d: ",i+1);
		sc("%d",&bk[i].size);
		remain+=bk[i].size;
		bk[i].num=i+1;
		bk[i].occ=0;
	}
	pr("Enter the process size:\n");
	for(int i=0;i<p;++i){
		pr("Size of Process %d: ",i+1);
		sc("%d",&proc[i].size);
		proc[i].num=i+1;
		proc[i].occ=-1;
	}
	br();
	pr("1-First Fit 2-Best Fit 3-Worst Fit\n");
	sc("%d",&ch);
	switch(ch){
		case 1:
			first(proc,p,bk,b);
			break;
		case 2:
			sort(bk,b);
			first(proc,p,bk,b);
			break;
		case 3:
			rsort(bk,b);
			first(proc,p,bk,b);
			break;
	}
}