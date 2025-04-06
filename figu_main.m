
 %Ö÷³ÌÐò
clear all;
close all;
clc
global r p c1 c2 r2;
    r=4;
    p=2;
    r2=1;
for k=1:1:4
if k==1

    c1=p-1;
    c2=15;   
    

    
else if k==2
    c1=p+1;
    c2=15;

    else if k==3
    c1=p-1;
    c2=2;

        else 
    c1=p+1;
    c2=2;

        end
    end
end 
for i=0:0.1:1
    for j=0:0.1:1
        [T,z]=ode45('fun1',[0 12],[i j]); 
        figure(1)
        %title('phase diagrams with r=1')
        subplot(2,2,k)
        hold on;
        %grid on
%         plot(z(:,1),z(:,2)); 
%         plot((c2-r2)/(r+p),(p-c1)/(r+p),'*')
%         plot((c2-r2)/(r+p)*ones(1,50),0.02:0.02:1,':r')
%         plot(0.02:0.02:1,(p-c1)/(r+p)*ones(1,50),':r')
%   xa1=z(:,1);
%   xa2=z(:,2);
%        arrowPlot(xa1,xa2); 
         plot(z(:,1),z(:,2)); 
        plot((c2-r2)/(r+p),(p-c1)/(r+p),'*')
        plot((c2-r2)/(r+p)*ones(1,50),0.02:0.02:1,':r')
        plot(0.02:0.02:1,(p-c1)/(r+p)*ones(1,50),':r')
       xlabel(num2str(k));
%         xlabel('x')
%        ylabel('y')
        axis([0,1,0,1]);
      box on;
      % set(gca,'xticklabel','','yticklabel','')
      set(gca,'xtick',[],'ytick',[])
    end
end

end
annotation('arrow',[0.73808301554708 0.749999999999999],...
    [0.583648323142491 0.583333333333334]);
annotation('arrow',[0.743440158404224 0.72906644177178],...
    [0.92650546599963 0.92650546599963]);
annotation('arrow',[0.905357142857142 0.905357142857142],...
    [0.759523809523812 0.740476190476193]);
annotation('arrow',[0.569642857142857 0.569642857142857],...
    [0.759523809523813 0.740476190476194]);
annotation('arrow',[0.739868729832795 0.725495013200351],...
    [0.109838799332964 0.109838799332964]);
annotation('arrow',[0.739868729832795 0.725495013200351],...
    [0.450314989809156 0.450314989809156]);
annotation('arrow',[0.569642857142855 0.569642857142855],...
    [0.28571428571429 0.266666666666671]);
annotation('arrow',[0.905357142857141 0.905357142857141],...
    [0.292857142857148 0.273809523809529]);
annotation('arrow',[0.295225872689938 0.307142857142857],...
    [0.109838799332967 0.10952380952381]);
annotation('arrow',[0.293440158404221 0.30535714285714],...
    [0.45031498980916 0.450000000000003]);
annotation('arrow',[0.464285714285714 0.464285714285714],...
    [0.283333333333336 0.264285714285717]);
annotation('arrow',[0.130357142857141 0.130357142857141],...
    [0.288095238095243 0.269047619047624]);
annotation('arrow',[0.298797301261366 0.284423584628922],...
    [0.583648323142489 0.583648323142489]);
annotation('arrow',[0.297011586975653 0.308928571428572],...
    [0.926505465999635 0.926190476190478]);
annotation('arrow',[0.464285714285712 0.464285714285712],...
    [0.769047619047625 0.750000000000006]);
annotation('arrow',[0.130357142857142 0.130852156057494],...
    [0.757142857142859 0.776505465999631]);


annotation('textbox',[0.455099442651803 0.904017046507321 0.0277474332648868 0.0525291828793775],...
    'String',{'Q'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.896170871223233 0.904017046507321 0.0277474332648868 0.0525291828793775],...
    'String',{'Q'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.455099442651803 0.423683713173987 0.0277474332648868 0.0525291828793775],...
    'String',{'Q'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.896170871223233 0.423683713173987 0.0277474332648868 0.0525291828793775],...
    'String',{'Q'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox', [0.0943851569375183 0.904017046507321 0.0277474332648868 0.0525291828793775],...
    'String',{'P'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox', [0.533670871223232 0.904017046507321 0.0277474332648868 0.0525291828793775],...
    'String',{'P'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.0943851569375183 0.423683713173987 0.0277474332648868 0.0525291828793775],...
    'String',{'P'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox', [0.533670871223232 0.423683713173987 0.0277474332648868 0.0525291828793775],...
    'String',{'P'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.0943851569375183 0.561636094126368 0.0277474332648868 0.0525291828793775],...
    'String',{'O'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.533670871223232 0.561636094126368 0.0277474332648868 0.0525291828793775],...
    'String',{'O'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.0943851569375183 0.0854456179358912 0.0277474332648868 0.0525291828793775],...
    'String',{'O'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.533670871223232 0.0854456179358912 0.0277474332648868 0.0525291828793775],...
    'String',{'O'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox', [0.455099442651803 0.561636094126368 0.0277474332648868 0.0525291828793775],...
    'String',{'R'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.896170871223233 0.561636094126368 0.0277474332648868 0.0525291828793775],...
    'String',{'R'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox',[0.455099442651803 0.0854456179358912 0.0277474332648868 0.0525291828793775],...
    'String',{'R'}, 'LineStyle','none', 'FitBoxToText','off');
annotation('textbox', [0.896170871223233 0.0854456179358912 0.0277474332648868 0.0525291828793775],...
    'String',{'R'}, 'LineStyle','none', 'FitBoxToText','off');











% figure (6) 
% plot(1:10,1:10);
% % arrowPlot(xa1,xa2);


   r=10;
   p=2;
    r2=1;
for k=1:1:4
if k==1

    c1=p-1;
    c2=2;
    
else if k==2

    c1=p-1;
    c2=15;
    else if k==3

    c1=p+1;
    c2=2;
        else 

    c1=p+1;
    c2=15;
        end
    end
end 
for i=0:0.1:1
    for j=0:0.1:1
        [T,z]=ode45('fun1',[0 15],[i j]); 
        figure(2)
        title('phase diagrams with r=10')
        subplot(2,2,k)
         hold on     %grid on
        xlabel('x')
        ylabel('y')
        plot(z(:,1),z(:,2)); 
        plot((c2-r2)/(r+p),(p-c1)/(r+p),'*')
        plot((c2-r2)/(r+p)*ones(1,50),0.02:0.02:1,':r')
        plot(0.02:0.02:1,(p-c1)/(r+p)*ones(1,50),':r')
        axis([0,1,0,1]);
       
    end
end
end
% 
% 
% % for r=1:1:4
% %     p=2;
% %     r2=1;
% %     c1=p-1;
% %     c2=2;
% % for i=0:0.1:1
% %     for j=0:0.1:1
% %         [T,z]=ode45('fun1',[0 5],[i j]);   % [i+0.1*(k-1) j+0.1*(k-1)]
% %         %remb(:,:,k)=z;
% %         figure(2)
% %         subplot(2,2,r)
% %         grid on
% %         plot(z(:,1),z(:,2)); 
% %         plot((c2-r2)/(r+p),(p-c1)/(r+p),'*r')
% %         axis([0,1, 0,1,]);
% %         hold on     
% %     end
% % end
% % end
% 
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
% 
% %     k=0;
% % for p=1:0.1:4
% %    r=2;
% %     r2=1;
% %     c1=p-1;
% %     c2=2;
% % % for i=0:0.1:1
% % %     for j=0:0.1:1
% %         [T,z]=ode45('fun1',[0 15],[(c2-r2)/(r+p)+0.01*(32-k) (p-c1)/(r+p)+0.01*(32-k)]);   %[i j] [i+0.1*(k-1) j+0.1*(k-1)]
% %         %remb(:,:,k)=z;
% %         figure(4)
% %         %subplot(2,2,r)
% %         grid on
% %         box on
% %         plot3(z(:,1),z(:,2),p*ones(length(z),1)); 
% %         plot3((c2-r2)/(r+p),(p-c1)/(r+p),p,'*r')
% %         axis([0,1, 0,1, 1,4]);
% %         hold on     
% % %     end
% % % end
% % k=k+1;
% % end
% 
% 
% 
% 
% 
% 
% 
% % for i=0:0.1:1
% %     for j=0:0.1:1
% %         [T,z]=ode45('fun1',[0 5],[1-i 1-j]); 
% %         figure(1)
% %         subplot(222)
% %         grid on
% %         plot(z(:,1),z(:,2)); 
% %         hold on     
% %     end
% % end
% % for i=0:0.1:1
% %     for j=0:0.1:1
% %         [T,Y]=ode45('fun1',[0 5],[i j]); 
% %         figure(1)
% %         subplot(221)
% %         grid on
% %         plot(Y(:,1),Y(:,2)); 
% %         hold on     
% %     end
% % end
% % for i=0:0.1:1
% %     for j=0:0.1:1
% %         [T,Y]=ode45('fun1',[0 5],[i j]); 
% %         figure(1)
% %         subplot(221)
% %         grid on
% %         plot(Y(:,1),Y(:,2)); 
% %         hold on     
% %     end
% % end
% 
% 
% 
% 
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
% 

 
