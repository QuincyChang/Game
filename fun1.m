function dzdt=fun1(t,x)
global Rb N  M  Q Tb S ;


m=x(1)*(1-x(1))*((Rb-N)*x(2)+(M-Rb));  
n=x(2)*(1-x(2))*((Q-Tb)*x(1)+(S-Q)); 


% m=x(1)*(1-x(1))*(-(r+p)*x(2)+(p-c1));  
% n=x(2)*(1-x(2))*((r+p)*x(1)+(r2-c2)); 



%x(1)*(1-x)*(5-6*y); y*(1-y)*(1-6*x)               r p c1 c2 r2
dzdt=[m;n];
