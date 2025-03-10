// #include <sys/time.h> 
// #include <unistd.h>
// #include<stdio.h>
// #include<stdlib.h>
// #include <assert.h>
// int fibo(){ // write your own procedure call
//   return(10); 
// }
// long nanosec(struct timeval t){ /* Calculate nanoseconds in a timeval structure */ 
//   return((t.tv_sec*1000000+t.tv_usec)*1000); 
// }
// int main(){ 
//   int i,j,res; 
//   long N_iterations=100000; /* A million iterations */ 
//   float avgTimeSysCall, avgTimeFuncCall; 
//   struct timeval t1, t2;
//   /* Find average time for System call */ 
//   res=gettimeofday(&t1,NULL); assert(res==0); 
//   for (i=0;i<N_iterations; i++){ 
//     j=getpid(); 
//   } 
//   res=gettimeofday(&t2,NULL);   assert(res==0); 
//   avgTimeSysCall = (nanosec(t2) - nanosec(t1))/(N_iterations*1.0);
//   /* Find average time for Function call */ 
//   res=gettimeofday(&t1,NULL);  assert(res==0); 
//   for (i=0;i<N_iterations; i++){ 
//     j=fibo(); 
//   } 
//   res=gettimeofday(&t2,NULL);   assert(res==0); 
//   avgTimeFuncCall = (nanosec(t2) - nanosec(t1))/(N_iterations*1.0); 
 
//   printf("Average time for System call getpid : %f\n",avgTimeSysCall); 
//   printf("Average time for Function call : %f\n",avgTimeFuncCall); 
// }


#include <sys/time.h> 
#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include <assert.h>
int fibo(int n){ // write your own procedure call
  if(n==0) return 0;
  else if(n==1 || n==2) return 1;
  else return fibo(n-1)+fibo(n-2);
}
int foo(){
  return 10;
}
int fact(int n){
  if(n==1 || n==0) return 1;
  else return n*fact(n-1);
}
long nanosec(struct timeval t){ /* Calculate nanoseconds in a timeval structure */ 
  return((t.tv_sec*1000000+t.tv_usec)*1000); 
}
int main(){ 
  int i,j,res; 
  long N_iterations=100; /* A million iterations */ 
  float avgTimeSysCall, avgTimeFuncCall; 
  struct timeval t1, t2;
  /* Find average time for System call */ 
  res=gettimeofday(&t1,NULL); assert(res==0); 
  for (i=0;i<N_iterations; i++){ 
    j=getpid(); 
  } 
  res=gettimeofday(&t2,NULL);   assert(res==0); 
  avgTimeSysCall = (nanosec(t2) - nanosec(t1))/(N_iterations*1.0);
  /* Find average time for Function call */ 
  res=gettimeofday(&t1,NULL);  assert(res==0); 
  for (i=0;i<N_iterations; i++){ 
    j=fact(i); 
    // j=foo();
    // j=fibo(i);
  }
  res=gettimeofday(&t2,NULL);   assert(res==0); 
  avgTimeFuncCall = (nanosec(t2) - nanosec(t1))/(N_iterations*1.0); 
 
  printf("Average time for System call getpid : %f\n",avgTimeSysCall); 
  printf("Average time for Function call : %f\n",avgTimeFuncCall); 
}




