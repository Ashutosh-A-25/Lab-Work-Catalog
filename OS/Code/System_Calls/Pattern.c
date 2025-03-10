#include<stdio.h>
#include<stdlib.h>
#include<wait.h>
#include<unistd.h>
// int main(){
//   int n;scanf("%d",&n);
//   for(int i=0;i<n;++i){
//     if(fork()==0){
//       printf("Child-->%d Parent-->%d\n",getpid(),getppid());
//       exit(0);
//     }
//   }for(int i=0;i<n;++i) wait(0);
// } <>DA1 for OS<>
int main(){
  int a,b,c;
  a=fork();
  if(a==0){
    sleep(2);printf("Child-->%d Parent-->%d\n",getpid(),getppid());
    for(int i=0;i<3;++i){
      if(fork()==0){
        printf("Child-->%d Parent-->%d\n",getpid(),getppid());exit(0);
      }for(int i=0;i<3;++i) wait(0);
    }
  }else{
    b=fork();
    if(b==0){
    sleep(2);printf("Child-->%d Parent-->%d\n",getpid(),getppid());
    if(fork()==0) printf("Child-->%d Parent-->%d\n",getpid(),getppid());
    wait(0);
    }
  }
}