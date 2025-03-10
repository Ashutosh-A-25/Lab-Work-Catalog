// Normal Fork function call
// #include<stdio.h>
// #include<unistd.h>
// #include<stdlib.h>
// int main(){
//     pid_t p;
//     p=fork();
//     printf("%d\n",p);
//     exit(0);
// }

// Child before Parent termination
// #include<stdio.h>
// #include<stdlib.h>
// #include<unistd.h>
// #include<sys/wait.h>

// int main(){
//     pid_t p;
//     p=fork();
//     if(p==0){
//         printf("Child %d %d\n",getpid(),getppid());
//         exit(0);
//     }else{
//         wait(0);
//         printf("Parent %d\n",getpid());
//     }
//     return 0;
// }

// 1 Child before Parent termination
// representing it using odd and even no.s
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
int main()
{
    int i;
    if(fork() == 0)
    {
    for(i=1;i<50;i++)
    if(i%2 == 0) printf("even %d\n",i);
    exit(0);
    }
    else{
        wait(0);
        for(i=1;i<50;i++)
        if(i%2 != 0) printf("odd %d\n",i);
    }
}


// Exercise 1
// #include<stdio.h>
// #include<stdlib.h>
// #include<unistd.h>
// #include<sys/wait.h>

// int main(){
//     pid_t c;
//     if(fork()==0) exit(0);
//     else{
//         c=wait(0);
//         printf("Parent process %d\nChild Process %d\n",getpid(),c);
//     }
//     return 0;
// }

// Exercise 2
// #include<stdio.h>
// #include<stdlib.h>
// #include<unistd.h>
// #include<sys/wait.h>
// typedef long long int ll;

// ll fact(ll n){
//     if(n<=1) return 1;
//     else return n*fact(n-1);
// }
// ll fibo(ll n){
//     if(n==1) return 0;
//     else if(n==2) return 1;
//     else if(n>=3) return fibo(n-1)+fibo(n-2);
// }
// int main()
// {
//     ll i;
//     if(fork() == 0)
//     {
//         int t;scanf("%d",&t);
//         for(ll i=1;i<=t;++i) printf("%lld ",fact(i));
//         printf("\n");
//         exit(0);
//     }
//     else{
//         wait(0);
//         int t;scanf("%d",&t);
//         for(i=1;i<15;i++) printf("%lld ",fibo(i));
//         printf("\n");
//     }
// }

// #include<stdio.h>
// #include<stdlib.h>
// #include<unistd.h>
// int main()
// {
// int i;
// if(fork() == 0)
// {
// for(i=1;i<50;i++)
// if(i%2 == 0)
// printf("even %d\n",i);
// }
// else
// {
// for(i=1;i<50;i++)
// if(i%2 != 0)
// printf("odd %d\n",i);
// }
// }
