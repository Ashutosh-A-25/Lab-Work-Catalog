% Example 3: Find the Laplace transform of a periodic function and to visualize periodic function.
 % consider f(t) = t, 0<t<1 and f(t) = 2-t, 1<t<2 ; f(t+2)=f(t) for all t.
 clc
clear 
syms t s
T=input('enter the period of the periodic function : ');
n=input('enter the number of partitions in one full period : ');
fun = 0*t;
for i=1:n
    a(i)=input('enter the left end point of the ith sub interval  :  ');
    b(i)=input('enter the right end point of the ith sub interval  :  ');
    f(i)=input('enter the function f(i) of the ith sub interval :  ');
    fun = fun+f(i)*(heaviside(t-a(i))-heaviside(t-b(i)));
end
ezplot(fun,[a(1) b(n)])
sum=0;
for i=1:n
    sum=sum+int(f(i)*exp(-s*t),t,a(i),b(i))
end
g = (1/(1-exp(-s*T)))*sum
g1=simplify(g)
figure
ezplot(g1,[0 b(n)])
