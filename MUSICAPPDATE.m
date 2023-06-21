clear all;
clc;

M=9; %количество элементов решетки
Rss=eye(5); %ковариационная матрица изначальных сигналов 
Rnn=0.1*eye(M); %ковариационная матрица аддитивных шумов

theta_1=0*(pi/180); %угол направления прихода ЭМ волны от первого источника
theta_2=20*(pi/180); %угол направления прихода ЭМ волны от второго источника
theta_3=30*(pi/180);
theta_4=35*(pi/180);
theta_5=-30*(pi/180);

mu_1=pi*sin(theta_1);
mu_2=pi*sin(theta_2);
mu_3=pi*sin(theta_3);
mu_4=pi*sin(theta_4);
mu_5=pi*sin(theta_5);

massiveM=1:M;

a_1=exp(mu_1*massiveM*1i);
a_2=exp(mu_2*massiveM*1i);
a_3=exp(mu_3*massiveM*1i);
a_4=exp(mu_4*massiveM*1i);
a_5=exp(mu_5*massiveM*1i);
A=[a_1;a_2;a_3;a_4;a_5];
A=A.';

R1=A*Rss;
R=R1*A'+Rnn;

%азимуты
    thetas1=-90:91;

    thetas=thetas1*(pi/180); % диапазон азимутов
    
    mus=pi*sin(thetas); % диапазон пространственных частот

   mussize=size(mus);
   muslen=mussize(1,2);
   
   for jj=1:muslen
       a(:,jj)=exp(mus(jj)*massiveM*1i);
   end
   
   %MVDR
   asize=size(a);
   alen=asize(1,2);
  
   for jj=1:alen
       a_idx = reshape(a(:,jj),[M,1]);
       
       multy=(R^(-1))*a_idx;
       S_MVDR(jj)=1/((a_idx')*multy);
   end
   
   plot(thetas*(180/pi),real(S_MVDR),'g-','LineWidth',1.5);
   xlabel('Azimuth angles \theta (degrees)');
   ylabel('Power (pseudo)spectrum (normalized)');
   grid on;