%%%%%%%%%%%%%%%%%%%%%%%
%% Memoire - tractions %%
%%%%%%%%%%%%%%%%%%%%%%%
%% Script affichant les graphes de contrainte-déformation résultant 
%% de la premiere session de tractions
close all
A=18;

d_o_1= xlsread('X200-180417-1.xls','Résultats X200-18...','H3')/1000;
F_1 = xlsread('X200-180417-1.xls','Valeurs X200-1804...','C4:C13460');
sigma_1 = F_1/pi/(d_o_1/2)^2/10^6;% [MPa]
dl_1= xlsread('X200-180417-1.xls','Valeurs X200-1804...','D4:D13460');
epsilon_1 = dl_1/A;
E_1=(sigma_1(1000)-sigma_1(1))/(epsilon_1(1000)-epsilon_1(1))
UTS_1=xlsread('X200-180417-1.xls','Résultats X200-18...','C3')/pi/(d_o_1/2)^2
epsilon_f_1=xlsread('X200-180417-1.xls','Résultats X200-18...','G3')/A

for i=1:10000 
    if (sigma_1(i)<=(epsilon_1(i)-0.002)*E_1)
    sigma_y_1=sigma_1(i)
    break;
    end
end

%plot(epsilon_1,sigma_1)

hold on

d_o_2= xlsread('X200-180417-2.xls','Résultats X200-18...','H3')/1000;
F_2 = xlsread('X200-180417-2.xls','Valeurs X200-1804...','C4:C13460');
sigma_2 = F_2/pi/(d_o_2/2)^2/10^6;% [MPa]
dl_2= xlsread('X200-180417-2.xls','Valeurs X200-1804...','D4:D13460');
epsilon_2 = dl_2/A;
UTS_2=xlsread('X200-180417-2.xls','Résultats X200-18...','C3')/pi/(d_o_2/2)^2
E_2=(sigma_2(1000)-sigma_2(1))/(epsilon_2(1000)-epsilon_2(1))
epsilon_f_2=xlsread('X200-180417-2.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_2(i)<=(epsilon_2(i)-0.002)*E_2)
    sigma_y_2=sigma_2(i)
    break;
    end
end
plot(epsilon_2,sigma_2)

d_o_3= xlsread('X200-180417-3.xls','Résultats X200-18...','H3')/1000;
F_3 = xlsread('X200-180417-3.xls','Valeurs X200-1804...','C4:C13460');
sigma_3 = F_3/pi/(d_o_3/2)^2/10^6;% [MPa]
dl_3= xlsread('X200-180417-3.xls','Valeurs X200-1804...','D4:D13460');
epsilon_3 = dl_3/A;
E_3=(sigma_3(1000)-sigma_3(1))/(epsilon_3(1000)-epsilon_3(1))
UTS_3=xlsread('X200-180417-3.xls','Résultats X200-18...','C3')/pi/(d_o_3/2)^2
epsilon_f_3=xlsread('X200-180417-3.xls','Résultats X200-18...','G3')/A
for i=100:10000 
    if (sigma_3(i)<=(epsilon_3(i)-0.002)*E_3)
    sigma_y_3=sigma_3(i)
    break;
    end
end
%plot(epsilon_3,sigma_3)

d_o_16= xlsread('X200-180417-16.xls','Résultats X200-18...','H3')/1000;
F_16 = xlsread('X200-180417-16.xls','Valeurs X200-1804...','C4:C13460');
sigma_16 = F_16/pi/(d_o_16/2)^2/10^6;% [MPa]
dl_16= xlsread('X200-180417-16.xls','Valeurs X200-1804...','D4:D13460');
epsilon_16 = dl_16/A;
E_16=(sigma_16(1000)-sigma_16(1))/(epsilon_16(1000)-epsilon_16(1))
UTS_16=xlsread('X200-180417-16.xls','Résultats X200-18...','C3')/pi/(d_o_16/2)^2
epsilon_f_16=xlsread('X200-180417-16.xls','Résultats X200-18...','G3')/A
for i=100:10000 
    if (sigma_16(i)<=(epsilon_16(i)-0.002)*E_16)
    sigma_y_16=sigma_16(i);
    break;
    end
end
%plot(epsilon_16,sigma_16)

d_o_17= xlsread('X200-180417-17.xls','Résultats X200-18...','H3')/1000;
F_17 = xlsread('X200-180417-17.xls','Valeurs X200-1804...','C4:C13460');
sigma_17 = F_17/pi/(d_o_17/2)^2/10^6;% [MPa]
dl_17= xlsread('X200-180417-17.xls','Valeurs X200-1804...','D4:D13460');
epsilon_17 = dl_17/A;
E_17=(sigma_17(350)-sigma_17(1))/(epsilon_17(350)-epsilon_17(1))
UTS_17=xlsread('X200-180417-17.xls','Résultats X200-18...','C3')/pi/(d_o_17/2)^2
epsilon_f_17=xlsread('X200-180417-17.xls','Résultats X200-18...','G3')/A
for i=100:10000 
    if (sigma_17(i)<=(epsilon_17(i)-0.002)*E_17)
    sigma_y_17=sigma_17(i);
    break;
    end
end
%plot(epsilon_17,sigma_17)


d_o_A= xlsread('X200-180417-A.xls','Résultats X200-18...','H3')/1000;
F_A= xlsread('X200-180417-A.xls','Valeurs X200-1804...','C4:C13460');
sigma_A = F_A/pi/(d_o_A/2)^2/10^6;% [MPa]
dl_A= xlsread('X200-180417-A.xls','Valeurs X200-1804...','D4:D13460');
epsilon_A = dl_A/A;
E_A=(sigma_A(1000)-sigma_A(1))/(epsilon_A(1000)-epsilon_A(1))
UTS_A=xlsread('X200-180417-A.xls','Résultats X200-18...','C3')/pi/(d_o_A/2)^2
epsilon_f_A=xlsread('X200-180417-A.xls','Résultats X200-18...','G3')/A
for i=1:5000 
    if (sigma_A(i)<=(epsilon_A(i)-0.002)*E_A)
    sigma_y_A=sigma_A(i)
    break;
    end
end
%plot(epsilon_A,sigma_A)

d_o_4= xlsread('X200-180417-4.xls','Résultats X200-18...','H3')/1000;
F_4 = xlsread('X200-180417-4.xls','Valeurs X200-1804...','C4:C13460');
sigma_4 = F_4/pi/(d_o_4/2)^2/10^6;% [MPa]
dl_4= xlsread('X200-180417-4.xls','Valeurs X200-1804...','D4:D13460');
epsilon_4 = dl_4/A;
E_4=(sigma_4(3537)-sigma_4(2492))/(epsilon_4(3537)-epsilon_4(2492))
UTS_4=xlsread('X200-180417-4.xls','Résultats X200-18...','C3')/pi/(d_o_4/2)^2
epsilon_f_4=xlsread('X200-180417-4.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_4(i)<=(epsilon_4(i)-0.002)*E_4)
    sigma_y_4=sigma_4(i)
    break;
    end
end
%semilogx(epsilon_4,sigma_4)

d_o_5= xlsread('X200-180417-5.xls','Résultats X200-18...','H3')/1000;
F_5 = xlsread('X200-180417-5.xls','Valeurs X200-1804...','C4:C13460');
sigma_5 = F_5/pi/(d_o_5/2)^2/10^6;% [MPa]
dl_5= xlsread('X200-180417-5.xls','Valeurs X200-1804...','D4:D13460');
epsilon_5 = dl_5/A;
E_5=(sigma_5(1000)-sigma_5(1))/(epsilon_5(1000)-epsilon_5(1))
UTS_5=xlsread('X200-180417-5.xls','Résultats X200-18...','C3')/pi/(d_o_5/2)^2
epsilon_f_5=xlsread('X200-180417-5.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_5(i)<=(epsilon_5(i)-0.002)*E_5)
    sigma_y_5=sigma_5(i)
    break;
    end
end
%semilogx(epsilon_5,sigma_5)

d_o_6= xlsread('X200-180417-6.xls','Résultats','H3')/1000;
F_6 = xlsread('X200-180417-6.xls','X200-180417-6','C4:C13460');
sigma_6 = F_6*4/pi/(d_o_1)^2/10^6;
dl_6= xlsread('X200-180417-6.xls','X200-180417-6','D4:D13460');
epsilon_6 = dl_6/A;
E_6=(sigma_6(1000)-sigma_6(1))/(epsilon_6(1000)-epsilon_6(1))
UTS_6=xlsread('X200-180417-6.xls','Résultats','C3')/pi/(d_o_6/2)^2
epsilon_f_6=xlsread('X200-180417-6.xls','Résultats','G3')/A
for i=1:5000 
    if (sigma_6(i)<=(epsilon_6(i)-0.002)*E_6)
    sigma_y_6=sigma_6(i);
    break;
    end
end
%plot(epsilon_6,sigma_6)

d_o_7= xlsread('X200-180417-7.xls','Résultats X200-18...','H3')/1000;
F_7 = xlsread('X200-180417-7.xls','Valeurs X200-1804...','C4:C13460');
sigma_7 = F_7/pi/(d_o_7/2)^2/10^6;% [MPa]
dl_7= xlsread('X200-180417-7.xls','Valeurs X200-1804...','D4:D13460');
epsilon_7 = dl_7/A;
E_7=(sigma_7(1000)-sigma_7(1))/(epsilon_7(1000)-epsilon_7(1))
UTS_7=xlsread('X200-180417-7.xls','Résultats X200-18...','C3')/pi/(d_o_7/2)^2
epsilon_f_7=xlsread('X200-180417-7.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_7(i)<=(epsilon_7(i)-0.002)*E_7)
    sigma_y_7=sigma_7(i)
    break;
    end
end
%plot(epsilon_7,sigma_7)

d_o_8= xlsread('X200-180417-8.xls','Résultats X200-18...','H3')/1000;
F_8= xlsread('X200-180417-8.xls','Valeurs X200-1804...','C4:C13460');
sigma_8 = F_8/pi/(d_o_8/2)^2/10^6;% [MPa]
dl_8= xlsread('X200-180417-8.xls','Valeurs X200-1804...','D4:D13460');
epsilon_8 = dl_8/A;
E_8=(sigma_8(1000)-sigma_8(1))/(epsilon_8(1000)-epsilon_8(1))
UTS_8=xlsread('X200-180417-8.xls','Résultats X200-18...','C3')/pi/(d_o_8/2)^2
epsilon_f_8=xlsread('X200-180417-8.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_8(i)<=(epsilon_8(i)-0.002)*E_8)
    sigma_y_8=sigma_8(i)
    break;
    end
end
%plot(epsilon_8,sigma_8)

d_o_9= xlsread('X200-180417-9.xls','Résultats X200-18...','H3')/1000;
F_9= xlsread('X200-180417-9.xls','Valeurs X200-1804...','C4:C13460');
sigma_9 = F_9/pi/(d_o_9/2)^2/10^6;% [MPa]
dl_9= xlsread('X200-180417-9.xls','Valeurs X200-1804...','D4:D13460');
epsilon_9 = dl_9/A;
E_9=(sigma_9(1000)-sigma_9(1))/(epsilon_9(1000)-epsilon_9(1))
UTS_9=xlsread('X200-180417-9.xls','Résultats X200-18...','C3')/pi/(d_o_9/2)^2
epsilon_f_9=xlsread('X200-180417-9.xls','Résultats X200-18...','G3')/A
for i=1:5000 
    if (sigma_9(i)<=(epsilon_9(i)-0.002)*E_9)
    sigma_y_9=sigma_9(i)
    break;
    end
end
%plot(epsilon_9,sigma_9)

d_o_10= xlsread('X200-180417-10.xls','Résultats X200-18...','H3')/1000;
F_10= xlsread('X200-180417-10.xls','Valeurs X200-1804...','C4:C13460');
sigma_10 = F_10/pi/(d_o_10/2)^2/10^6;% [MPa]
dl_10= xlsread('X200-180417-10.xls','Valeurs X200-1804...','D4:D13460');
epsilon_10 = dl_10/A;
E_10=(sigma_10(1000)-sigma_10(1))/(epsilon_10(1000)-epsilon_10(1))
UTS_10=xlsread('X200-180417-10.xls','Résultats X200-18...','C3')/pi/(d_o_10/2)^2
epsilon_f_10=xlsread('X200-180417-10.xls','Résultats X200-18...','G3')/10
for i=1:10000 
    if (sigma_10(i)<=(epsilon_10(i)-0.002)*E_10)
    sigma_y_10=sigma_10(i)
    break;
    end
end
%plot(epsilon_10,sigma_10)

d_o_11= xlsread('X200-180417-11.xls','Résultats X200-18...','H3')/1000;
F_11= xlsread('X200-180417-11.xls','Valeurs X200-1804...','C4:C13460');
sigma_11 = F_11/pi/(d_o_11/2)^2/10^6;% [MPa]
dl_11= xlsread('X200-180417-11.xls','Valeurs X200-1804...','D4:D13460');
epsilon_11 = dl_11/A;
E_11=(sigma_11(320)-sigma_11(1))/(epsilon_11(320)-epsilon_11(1))
UTS_11=xlsread('X200-180417-11.xls','Résultats X200-18...','C3')/pi/(d_o_11/2)^2
epsilon_f_11=xlsread('X200-180417-11.xls','Résultats X200-18...','G3')/10
for i=1:10000 
    if (sigma_11(i)<=(epsilon_11(i)-0.002)*E_11)
    sigma_y_11=sigma_11(i)
    break;
    end
end
%plot(epsilon_11,sigma_11)

d_o_B= xlsread('X200-180417-B.xls','Résultats X200-18...','H3')/1000;
F_B= xlsread('X200-180417-B.xls','Valeurs X200-1804...','C4:C13460');
sigma_B = F_B/pi/(d_o_B/2)^2/10^6;% [MPa]
dl_B= xlsread('X200-180417-B.xls','Valeurs X200-1804...','D4:D13460');
epsilon_B = dl_B/A;
E_B=(sigma_B(1000)-sigma_B(1))/(epsilon_B(1000)-epsilon_B(1))
UTS_B=xlsread('X200-180417-B.xls','Résultats X200-18...','C3')/pi/(d_o_B/2)^2
epsilon_f_B=xlsread('X200-180417-B.xls','Résultats X200-18...','G3')/10
for i=1:10000 
    if (sigma_B(i)<=(epsilon_B(i)-0.002)*E_B)
    sigma_y_B=sigma_B(i)
    break;
    end
end
%plot(epsilon_B,sigma_B)

d_o_13= xlsread('X200-180417-13.xls','Résultats X200-18...','H3')/1000;
F_13= xlsread('X200-180417-13.xls','Valeurs X200-1804...','C4:C13460');
sigma_13 = F_13/pi/(d_o_13/2)^2/10^6;% [MPa]
dl_13= xlsread('X200-180417-13.xls','Valeurs X200-1804...','D4:D13460');
epsilon_13 = dl_13/A;
E_13=(sigma_13(850)-sigma_13(1))/(epsilon_13(850)-epsilon_13(1))
UTS_13=xlsread('X200-180417-13.xls','Résultats X200-18...','C3')/pi/(d_o_13/2)^2
epsilon_f_13=xlsread('X200-180417-13.xls','Résultats X200-18...','G3')/10
for i=1:10000 
    if (sigma_13(i)<=(epsilon_13(i)-0.002)*E_13)
    sigma_y_13=sigma_13(i)
    break;
    end
end
%plot(epsilon_13,sigma_13)

d_o_14= xlsread('X200-180417-14.xls','Résultats X200-18...','H3')/1000;
F_14= xlsread('X200-180417-14.xls','Valeurs X200-1804...','C4:C13460');
sigma_14 = F_13/pi/(d_o_14/2)^2/10^6;% [MPa]
dl_14= xlsread('X200-180417-14.xls','Valeurs X200-1804...','D4:D13460');
epsilon_14 = dl_14/A;
E_14=(sigma_14(700)-sigma_14(1))/(epsilon_14(700)-epsilon_14(1))
UTS_14=xlsread('X200-180417-14.xls','Résultats X200-18...','C3')/pi/(d_o_14/2)^2
epsilon_f_14=xlsread('X200-180417-14.xls','Résultats X200-18...','G3')/10
for i=1:10000 
    if (sigma_14(i)<=(epsilon_14(i)-0.002)*E_14)
    sigma_y_14=sigma_14(i)
    break;
    end
end
%plot(epsilon_14,sigma_14)



legend('X200-180417-1','X200-180417-2','X200-180417-3','X200-180417-16','X200-180417-17','X200-180417-A','X200-180417-4','X200-180417-5','X200-180417-6','X200-180417-7','X200-180417-8','X200-180417-9','X200-180417-A')
ylabel('\sigma_{eng} [MPa]')
xlabel('\epsilon_{eng} [-]')
% x=linspace(0, 0.1, 100);
% y=zeros(1,100);
% for i=1:100
%     y(i)=(x(i)-0.002)*6.095543059322659*10^4;
% end
% plot(x,y)

% x=linspace(0,0.05,1000);
% y=zeros(1000,1);
% for i=1:1000
%     y(i)=(x(i)-0.002)*E_5;
% end
% hold on
% semilogx(x,y);

%MOYENNES
E=mean([68.2 64.7 64.7 67.6 62.0 70.9 67.9 66.5 72.5 71.7 71.3 69.6 71 68.3 69.5]);

%RAMBERG-OSGOOD
%AB
E_AB=mean([E_2 E_3 E_16 E_17 E_A])
sigma_y_AB=mean([sigma_y_1 sigma_y_2 sigma_y_16 sigma_y_17 sigma_y_A])
UTS_AB=mean([UTS_1 UTS_2 UTS_16 UTS_17 UTS_A])
epsilon_f_AB=mean([epsilon_f_1 epsilon_f_2 epsilon_f_16 epsilon_f_17 epsilon_f_A])
n=log(UTS_AB/sigma_y_AB)/log(500*epsilon_f_AB)
figure
epsilon_AB=linspace(0,epsilon_f_AB,500)
sigma_AB=interp1(0.01*[0 0.45347 0.64176 1.02951 1.76269 2.18 100*epsilon_f_AB],[0 239.97 272.67 309.01 345.34*1.02 368.7 381.68],linspace(0,epsilon_f_AB,500),'pchip');
plot(epsilon_AB,sigma_AB)
% sigma_AB=linspace(0,UTS_AB,500)
% epsilon_AB=zeros(500,1)
% for i=1:500
%     epsilon_AB(i)=sigma_AB(i)/E_AB/10^6+0.002*(sigma_AB(i)/sigma_y_AB)^(n/10)
% end
% figure
% plot(epsilon_AB,sigma_AB)
hold on
%[x, index] = unique(epsilon_2); 
%sigma_2b = interp1(x, sigma_2(index),epsilon_2); 
%p=polyfit(epsilon_2,sigma_2b,30)
%pe=fit(epsilon_2,sigma_2b,'pchipinterp')
%sigma_e=184*exp(37.78*epsilon_2)
%sigsig=polyval(p,epsilon_2)
%dp=polyder(p)
%dsigsig=polyval(dp,epsilon_2)
dsigma_AB=diff(sigma_AB)./diff(epsilon_AB)
plot(epsilon_AB(2:end),dsigma_AB)
%plot(epsilon_2(1:end),dsigsig)

figure
%150

E_150=mean([E_13 E_14 E_B])
sigma_y_150=mean([sigma_y_13 sigma_y_14 sigma_y_B])
UTS_150=mean([UTS_13 UTS_14 UTS_B])
epsilon_f_150=mean([epsilon_f_13 epsilon_f_14 epsilon_f_B])
n=log(UTS_150/sigma_y_150)/log(500*epsilon_f_150)

plot(linspace(0,epsilon_f_150,500),interp1(0.01*[0 0.46727 0.7242 1.37843 2.89153 5 6.16553],[0 259.36 301.43 348.18 398.92 430 441.67],linspace(0,epsilon_f_150,500),'spline'))

%200

E_200=mean([E_10 E_11])
sigma_y_200=mean([sigma_y_10 sigma_y_11])
UTS_200=mean([UTS_10 UTS_11])
epsilon_f_200=mean([epsilon_f_10 epsilon_f_11])
n=log(UTS_200/sigma_y_200)/log(500*epsilon_f_150)

plot(linspace(0,epsilon_f_200,500),interp1(0.01*[0 0.40102 0.64388 1.23653 2.53021 4 epsilon_f_200*100],[0 220.83 258.03 299.35 340.68 370 382.01],linspace(0,epsilon_f_200,500),'spline'))

%250

E_250=mean([E_7 E_8 E_9])
sigma_y_250=mean([sigma_y_7 sigma_y_8])
UTS_250=mean([UTS_7 UTS_8])
epsilon_f_250=mean([epsilon_f_7 epsilon_f_8])
n=log(UTS_200/sigma_y_200)/log(500*epsilon_f_150)

plot(linspace(0,0.165,500),interp1(0.01*[0 0.35761 0.61691 1.6578 3.5 5.33148 9.58661 13.53987 16.98394],[0 211.61 241.45 274.60 297*1.03 307.76*1.08 324.33*1.15 334.28*1.18 402.27],linspace(0,0.165,500),'spline'))

%300

E_300=mean([E_6 E_5])
sigma_y_300=mean([sigma_y_4 sigma_y_5 sigma_y_6])
UTS_300=mean([UTS_4 UTS_5 UTS_6])
epsilon_f_300=mean([epsilon_f_4 epsilon_f_5 epsilon_f_6])
n=log(UTS_200/sigma_y_200)/log(500*epsilon_f_150)

plot(linspace(0,0.297,500),interp1(0.01*[0 0.27543 0.3 0.35627 0.56306 1.99506 8.03289 15.74677 25 30.06721],[0 153.66 157*1.01 163.84*1.05 176.57*1.08 202.08*1.05 227.48*1.125 240.2*1.24 250*1.32 334.5],linspace(0,0.297,500),'spline'))
% 
% sigma_150=linspace(0,UTS_150,500)
% epsilon_150=zeros(500,1)
% for i=1:500
%     epsilon_150(i)=sigma_150(i)/E_150/10^6+0.000000000000000000000000001516*(sigma_150(i)/sigma_y_150)^(n)
% end
% plot(epsilon_150,sigma_150)
xlabel('True strain [-]')
ylabel('True stress [MPa]')
legend('As-built','150°C (2h)','200°C (2h)','250°C (2h)','300°C (2h)')

%Y1avg = interp1(X1,Y1,Xavg);
% Y2avg = interp1(X2,Y2,Xavg);
% .
% .
% Y5avg = interp1(X5,Y5,Xavg);
% % Compute the average of Y for the Xavg
% Yavg = mean([Y1avg Y2avg ... Y5avg],2); % assuming Ys are column vectors
% 
% Xavg=linspace(0,0.04,1000)
% [x, index] = unique(epsilon_1); 
% avg1 = interp1(x, sigma_1(index), Xavg); 
% [x, index] = unique(epsilon_2); 
% avg2 = interp1(x, sigma_2(index), Xavg); 
% [x, index] = unique(epsilon_16); 
% avg16 = interp1(x, sigma_16(index), Xavg); 
% [x, index] = unique(epsilon_17); 
% avg17 = interp1(x, sigma_17(index), Xavg); 
% [x, index] = unique(epsilon_A); 
% avgA = interp1(x, sigma_A(index), Xavg);
% avg1(isnan(avg1))=0;
% avg2(isnan(avg2))=0;
% avg16(isnan(avg16))=0;
% avg17(isnan(avg17))=0;
% avgA(isnan(avgA))=0;
% % avg1 = interp1(epsilon_1,sigma_1,Xavg);
% % avg2= interp1(epsilon_2,sigma_2,Xavg);
% % avg16 = interp1(epsilon_16,sigma_16,Xavg);
% % avg17 = interp1(epsilon_17,sigma_17,Xavg);
% % avgA = interp1(epsilon_A,sigma_A,Xavg);
% % Compute the average of Y for the Xavg
% Yavg = (avg1 +avg2 +avg16 +avg17 +avgA)/5; % assuming Ys are column vectors
% figure
% plot(Xavg,Yavg)
% hold on
% 
% [x, index] = unique(epsilon_13); 
% avg13 = interp1(x, sigma_13(index), Xavg); 
% [x, index] = unique(epsilon_14); 
% avg14 = interp1(x, sigma_14(index), Xavg); 
% [x, index] = unique(epsilon_B); 
% avgB = interp1(x, sigma_B(index), Xavg);
% avg13(isnan(avg13))=0;
% avg14(isnan(avg14))=0;
% avgB(isnan(avgB))=0;
% Yavg2=(avg13+avg14+avgB)/3
% plot(Xavg,Yavg2)
% 
% [x, index] = unique(epsilon_13); 
% avg13 = interp1(x, sigma_13(index), Xavg); 
% [x, index] = unique(epsilon_14); 
% avg14 = interp1(x, sigma_14(index), Xavg); 
% [x, index] = unique(epsilon_B); 
% avgB = interp1(x, sigma_B(index), Xavg);
% avg13(isnan(avg13))=0;
% avg14(isnan(avg14))=0;
% avgB(isnan(avgB))=0;
% Yavg2=(avg13+avg14+avgB)/3
% plot(Xavg,Yavg2)