function dzdt=fun1(t,x)
global r p c1 c2 r2;


m=x(1)*(1-x(1))*(-(r+p)*x(2)+(p-c1));  
n=x(2)*(1-x(2))*((r+p)*x(1)+(r2-c2)); 

%x(1)*(1-x)*(5-6*y); y*(1-y)*(1-6*x)
dzdt=[m;n];
