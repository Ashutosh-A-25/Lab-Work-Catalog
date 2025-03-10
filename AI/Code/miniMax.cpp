// Minimax Algo
// Video Link :- https://www.youtube.com/watch?v=l-hh51ncgDI&t=374s
// Video Link (Alpha-Beta Pruning) :-  https://www.youtube.com/watch?v=_i-lZcbWkps
#include "iostream"
#include "cmath"
using namespace std;

struct bucket{
    int data[30];
    int n;
};

int miniMax(int *ar,bucket arr[],int index,int height,bool isMax){
    if(height == 0)
        return ar[index];
    
    int x,y,cur;
    if(isMax){
        x = miniMax(ar,arr,index*2,height-1,false);
        y = miniMax(ar,arr,index*2+1,height-1,false);
        cur = max(x,y);
        arr[height].data[arr[height].n] = x;
        arr[height].n+=1;
        arr[height].data[arr[height].n] = y;
        arr[height].n+=1;
        cout<<"Current Height : "<<height<<"\n";
		cout<<"Options : "<<x<<" , "<<y<<"\n";
		cout<<"Current Choice : "<<cur<<" by Samuel"<<"\n";
        return cur;
    }
    else{
        x = miniMax(ar,arr,index*2,height-1,true);
        y = miniMax(ar,arr,index*2+1,height-1,true);
        cur = min(x,y);
        arr[height].data[arr[height].n] = x;
        arr[height].n+=1;
        arr[height].data[arr[height].n] = y;
        arr[height].n+=1;
        cout<<"Current Height : "<<height<<"\n";
		cout<<"Options : "<<x<<" , "<<y<<"\n";
		cout<<"Current Choice : "<<cur<<" by Rama"<<"\n";
        return cur;
    }
}

void print(bucket *ar,int n){
    for(int i=n+1;i>=1;i--){
        for(int j=0;j<ar[i].n;j++)
            cout<<ar[i].data[j]<<" ";
        cout<<"\n";
    }
}

int main(){
    int depth,n;
    cout<<"Depth : ";
    cin>>depth;

    n = (int)pow(2,depth+1) - 1;

    int *ar = new int[n];
    bucket arr[depth+1];

    for(int i=1;i<=depth+1;i++)
        arr[i].n = 0;

    cout<<"Leaf Nodes: ";
    for(int i=0;i<(int)pow(2,depth);i++)
        cin>>ar[i];

    int output = miniMax(ar,arr,0,depth,true);
    arr[depth+1].data[arr[depth+1].n] = output;
    arr[depth+1].n+=1;
    cout<<"The Final Tree:\n";
    print(arr,depth);
}