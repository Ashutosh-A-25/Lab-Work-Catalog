clc
clear 
syms t s k
T=input('enter the period of the periodic function : ');
 a=input('enter the left end point of the ith sub interval  :  ');
    b=input('enter the right end point of the ith sub interval  :  ');
    f=input('enter the function f(i) of the ith sub interval :  ');
    fun =f*(heaviside(t-a)-heaviside(t-b));
g = (1/(1-exp(-s*T)))*fun;
g1=simplify(g)
