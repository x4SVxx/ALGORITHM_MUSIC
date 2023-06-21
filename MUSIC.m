clear all;
clc;

M=10; %количество элементов решетки
SNR=10; %отношение сигнал/шум
d=3; %количество источников ЭМ волн
N=50; %количество замеров 

S1=randn(d,N); 
%матрица из -1 0 1 

for ii=1:d
    for jj=1:N
        if S1(ii,jj)>0
            S1(ii,jj)=1;
        elseif S1(ii,jj)==0
            S1(ii,jj)=0;
        elseif S1(ii,jj)<0
            S1(ii,jj)=-1;
        end
    end
end

S2=randn(d,N); 
%матрица из -1 0 1 

for ii=1:d
    for jj=1:N
        if S2(ii,jj)>0
            S2(ii,jj)=1;
        elseif S2(ii,jj)==0
            S2(ii,jj)=0;
        elseif S2(ii,jj)<0
            S2(ii,jj)=-1;
        end
    end
end

S=(S1+S2*1i)/sqrt(2); %QPSK

W1=randn(M,N); 
W2=randn(M,N);

W =(W1+W2*1i)/sqrt(2)*10^(-SNR/20); %AWGN

mu_R=2*pi/M;

cases=[-1,0,1;-0.5,0,0.5;-0.3,0,0.3];

sizecases=size(cases);

massiveM=1:M;

for ii=1:sizecases(1,1)
    
    %углы прихода(пространственные частоты)
    mu_1 = cases(ii,1)*mu_R;
    mu_2 = cases(ii,2)*mu_R;
    mu_3 = cases(ii,3)*mu_R;

%     theta_1=0*(pi/180); %угол направления прихода ЭМ волны от первого источника
%     theta_2=20*(pi/180); %угол направления прихода ЭМ волны от второго источника
%     theta_3=30*(pi/180);
% 
%     mu_1=pi*sin(theta_1);
%     mu_2=pi*sin(theta_2);
%     mu_3=pi*sin(theta_3);
    
    %сканирующие вектора
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    
    A=[a_1;a_2;a_3]; %матрица сканирующих векторов
    A=A.';
   
    X=(A*S)+W; %матрица принятых сигналов
    R=X*(X');
    
    [U,Sigma,Vh]=svd(X);
    
    Usize=size(U);
    Ulen=Usize(1,2);
    Uhight=Usize(1,1);
   
    flag=1;
    for iii=1:Uhight
        for jjj=d+1:Ulen
            U_0(iii,flag)=U(iii,jjj); %шумовое подпространство
            flag=flag+1;
        end
        flag=1;
    end
    
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
       
   %MUSIC   
      for jj=1:alen
       a_idx = reshape(a(:,jj),[M,1]);
       
       multya_idx=(a_idx')*a_idx;
       multyU_0=(U_0')*a_idx;
       multyU=U_0*multyU_0;
       S_MUSIC(jj)=multya_idx/((a_idx')*multyU);
      end
      
      maxmvdr=S_MVDR/max(S_MVDR);
      maxmusic=S_MUSIC/max(S_MUSIC);
      realmvdr=real(maxmvdr);
      realmusic=real(maxmusic);
      
      subplot(2,2,ii);
      semilogy((thetas*(180/pi)),realmvdr,'g-','LineWidth',1.5);
      xlabel('Azimuth angles \theta (degrees)');
      ylabel('Power (pseudo)spectrum (normalized)');
      hold on;
      grid on;
      semilogy((thetas*(180/pi)),realmusic,'r-','LineWidth',1.5);
      hold off;
      legend('MVDR','MUSIC');
end
    
    
    

