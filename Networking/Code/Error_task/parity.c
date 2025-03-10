#include<stdio.h>
#include<string.h>
// Parity check

int even(int num)
{
   int count=0,k; 
   while(num>0)
   {
       k=num%10;
       num/=10;
       if(k==1)
           ++count;
   }
   if(count%2==0)
       return 0;
   else
       return 1;
}

int odd(int num)
{
   int count=0,k;
   while(num>0)
   {
       k=num%10;
       num/=10;
       if(k==1)
           ++count;
   }
   if(count%2==0)
       return 1;
   else
       return 0;
}

int main()
{
   int data,l,out[3],parity;
   scanf("%d",&data);
   printf("Which parity 1_Even or 2_Odd\n");
   scanf("%d",&l);
   if(l==1)
       parity=even(data);
   else if(l==2)
       parity=odd(data);
   out[0]=data;out[1]=parity;
   printf("Your encoded data %d%d",out[0],out[1]);
}