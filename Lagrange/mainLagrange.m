clc
close all
clear all

%Step
dx=0.001;
%Abscissas
x=0:dx:1;
%Order
N=7;
%Plot
a=3;
b=ceil((N-1)/a);

figure ('Name','Lagrangian function')
for i=2:N
    
    pointx=linspace(0,1,i);
    pointy=zeros(size(pointx));
    y=zeros(i,length(x));
    for j=1:length(pointx)
        pointy=zeros(size(pointx));
        pointy(j)=1;
        y(j,:)=lagrange(x,pointx,pointy);
    end
    
    subplot(a,b,i-1);
    plot(x,y(1,:),'LineWidth',1.5);
    title(['Order ', num2str(i-1)])
    for j=1:length(pointx)
        hold on
        grid on
        plot(x,y(j,:),'LineWidth',1.5);
    end
end


% % % % figure ('Name','Evolution through time')
% % % % plot(x,c(:,1));
% % % % for j=1:length(t)
% % % %     hold on
% % % %     grid on
% % % %     if mod(j,modulo)==0;
% % % %        plot(x,c(:,j));
% % % %     end
% % % % end