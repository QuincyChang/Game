
 %主程序
clear all;
close all;
clc
global  Rb N  M  Q Tb S       ;
  
% N=3;              %     p=2;
% Q=2.5;   %     r2=1;
% Tb=1;
% S=2;    %S>Tb 时
% 
% 
%  
% for k=1:1:4
% if k==1         %case1
% 
%     M=N-1;   %M<N
%     Rb=6;     %M<Rb     
%     
% else if k==2  %case1
% 
%     M=N+1;  %M>N
%     Rb=6;     %M<Rb   
%     else if k==3
% 
%     M=N+1;   %M>N
%     Rb=1;     %M>Rb     
%         else 
% 
%     M=N-1;   %M<N
%     Rb=1;     %M>Rb     
%         end
%     end
% end 
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 10],[i j]); 
%         figure(1)
%         %title('phase diagrams with r=1')
%         subplot(2,2,k)
%         hold on;
%          plot(z(:,1),z(:,2)); 
%         plot((Q-S)/(Q-Tb),(M-Rb)/(N-Rb),'*')
%         plot((Q-S)/(Q-Tb)*ones(1,50),0.02:0.02:1,':r')
%         plot(0.02:0.02:1,(M-Rb)/(N-Rb)*ones(1,50),':r')
%         xlabel('x')
%        ylabel('y')
%         axis([0,1,0,1]);
%        % hold on     
%     end
% end
% end
% 
% 
% 
% 
% N=3;              %     p=2;
% Q=2.5;   %     r2=1;
% Tb=2;
% S=1;    %S<Tb 时
% 
% for k=1:1:4
% if k==1         %case1
% 
%     M=N-1;   %M<N
%     Rb=6;     %M<Rb     
%     
% else if k==2  %case1
% 
%     M=N+1;  %M>N
%     Rb=6;     %M<Rb   
%     else if k==3
% 
%     M=N+1;   %M>N
%     Rb=1;     %M>Rb     
%         else 
% 
%     M=N-1;   %M<N
%     Rb=1;     %M>Rb     
%         end
%     end
% end 
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 10],[i j]); 
%         figure(2)
%         %title('phase diagrams with r=1')
%         subplot(2,2,k)
%         hold on;
%          plot(z(:,1),z(:,2)); 
%         plot((Q-S)/(Q-Tb),(M-Rb)/(N-Rb),'*')
%         plot((Q-S)/(Q-Tb)*ones(1,50),0.02:0.02:1,':r')
%         plot(0.02:0.02:1,(M-Rb)/(N-Rb)*ones(1,50),':r')
%         xlabel('x')
%        ylabel('y')
%         axis([0,1,0,1]);
%        % hold on     
%     end
% end
% end





N=3;              %     p=2;
Q=2.5;   %     r2=1;
Tb=1;
S=2;    %S>Tb 时 
for k=1:1:4
if k==1         %case1

    M=N-1;   %M<N
    Rb=6;     %M<Rb     
    
else if k==2  %case1

    M=N+1;  %M>N
    Rb=6;     %M<Rb   
    else if k==3

    M=N+1;   %M>N
    Rb=1;     %M>Rb     
        else 

    M=N-1;   %M<N
    Rb=1;     %M>Rb     
        end
    end
end 
for i=0:0.1:1
    for j=0:0.1:1
        [T,z]=ode45('fun1',[0 10],[i j]); 
        figure(k)
        subplot(1,2,2)
        title('investor selection pattern (S>T)')
         hold on;
         plot(z(:,1),z(:,2)); 
        plot((Q-S)/(Q-Tb),(M-Rb)/(N-Rb),'*')
        plot((Q-S)/(Q-Tb)*ones(1,50),0.02:0.02:1,':r')
        plot(0.02:0.02:1,(M-Rb)/(N-Rb)*ones(1,50),':r')
        xlabel('x')
       ylabel('y')
        axis([0,1,0,1]);
       % hold on     
    end
end
end



N=3;              %     p=2;
Q=2.5;   %     r2=1;
Tb=2;
S=1;    %S<Tb 时

for k=1:1:4
if k==1         %case1

    M=N-1;   %M<N
    Rb=6;     %M<Rb     
    
else if k==2  %case1

    M=N+1;  %M>N
    Rb=6;     %M<Rb   
    else if k==3

    M=N+1;   %M>N
    Rb=1;     %M>Rb     
        else 

    M=N-1;   %M<N
    Rb=1;     %M>Rb     
        end
    end
end 
for i=0:0.1:1
    for j=0:0.1:1
        [T,z]=ode45('fun1',[0 10],[i j]); 
        figure(k)
        subplot(1,2,1)
        hold on;
        title('manager selection pattern (S<T)')
         plot(z(:,1),z(:,2)); 
        plot((Q-S)/(Q-Tb),(M-Rb)/(N-Rb),'*')
        plot((Q-S)/(Q-Tb)*ones(1,50),0.02:0.02:1,':r')
        plot(0.02:0.02:1,(M-Rb)/(N-Rb)*ones(1,50),':r')
        xlabel('x')
       ylabel('y')
        axis([0,1,0,1]);
       % hold on     
    end
end
end







































% figure (6)  
% arrowPlot(xa1,xa2);


%    r=10;
%    p=2;
%     r2=1;
% for k=1:1:4
% if k==1
% 
%     c1=p-1;
%     c2=2;
%     
% else if k==2
% 
%     c1=p-1;
%     c2=15;
%     else if k==3
% 
%     c1=p+1;
%     c2=2;
%         else 
% 
%     c1=p+1;
%     c2=15;
%         end
%     end
% end 
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 15],[i j]); 
%         figure(2)
%         title('phase diagrams with r=10')
%         subplot(2,2,k)
%          hold on     %grid on
%         xlabel('x')
%         ylabel('y')
%         plot(z(:,1),z(:,2)); 
%         plot((c2-r2)/(r+p),(p-c1)/(r+p),'*')
%         plot((c2-r2)/(r+p)*ones(1,50),0.02:0.02:1,':r')
%         plot(0.02:0.02:1,(p-c1)/(r+p)*ones(1,50),':r')
%         axis([0,1,0,1]);
%        
%     end
% end
% end


% for r=1:1:4
%     p=2;
%     r2=1;
%     c1=p-1;
%     c2=2;
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 5],[i j]);   % [i+0.1*(k-1) j+0.1*(k-1)]
%         %remb(:,:,k)=z;
%         figure(2)
%         subplot(2,2,r)
%         grid on
%         plot(z(:,1),z(:,2)); 
%         plot((c2-r2)/(r+p),(p-c1)/(r+p),'*r')
%         axis([0,1, 0,1,]);
%         hold on     
%     end
% end
% end

%     k=0;
% for r=0:0.2:10
%    p=2;
%     r2=1;
%     c1=p-1;
%     c2=2;
% % for i=0:0.1:1
% %     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 15],[0.07 0.07]);   %[(c2-r2)/(r+p)+0.01*(32-k) (p-c1)/(r+p)+0.01*(32-k)] [i j] [i+0.1*(k-1) j+0.1*(k-1)]
%         %remb(:,:,k)=z;
%         figure(3)
%         %subplot(2,2,r)
%         grid on
%         box on
%         plot3(z(:,1),z(:,2),r*ones(length(z),1)); 
%         plot3((c2-r2)/(r+p),(p-c1)/(r+p),r,'*r')
%         axis([0,1, 0,1, 0,10]);
%         hold on     
% %     end
% % end
% k=k+1;
% end
% title('center evolution as reword r increases from 0 to 10')
% xlabel('x')
% ylabel('y')
% zlabel('r')
% legend('center','evolution')

%     k=0;
% for p=1:0.1:4
%    r=2;
%     r2=1;
%     c1=p-1;
%     c2=2;
% % for i=0:0.1:1
% %     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 15],[(c2-r2)/(r+p)+0.01*(32-k) (p-c1)/(r+p)+0.01*(32-k)]);   %[i j] [i+0.1*(k-1) j+0.1*(k-1)]
%         %remb(:,:,k)=z;
%         figure(4)
%         %subplot(2,2,r)
%         grid on
%         box on
%         plot3(z(:,1),z(:,2),p*ones(length(z),1)); 
%         plot3((c2-r2)/(r+p),(p-c1)/(r+p),p,'*r')
%         axis([0,1, 0,1, 1,4]);
%         hold on     
% %     end
% % end
% k=k+1;
% end







% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,z]=ode45('fun1',[0 5],[1-i 1-j]); 
%         figure(1)
%         subplot(222)
%         grid on
%         plot(z(:,1),z(:,2)); 
%         hold on     
%     end
% end
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,Y]=ode45('fun1',[0 5],[i j]); 
%         figure(1)
%         subplot(221)
%         grid on
%         plot(Y(:,1),Y(:,2)); 
%         hold on     
%     end
% end
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,Y]=ode45('fun1',[0 5],[i j]); 
%         figure(1)
%         subplot(221)
%         grid on
%         plot(Y(:,1),Y(:,2)); 
%         hold on     
%     end
% end




% 
% r=2;
% %dx/dt-t
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,Y]=ode45('fun1',[0 5],[i j]);
%         figure(4)
%         grid on
%         plot(T,Y(:,1));
%         hold on
%     end
% end
% %dy/dt-t
% for i=0:0.1:1
%     for j=0:0.1:1
%         [T,Y]=ode45('fun1',[0 5],[i j]); 
%         figure(5)
%         grid on
%         %plot3(T,Y(:,1),Y(:,2))
%         plot(T,Y(:,2)); 
%         hold on
%     end
% end
% 


 
