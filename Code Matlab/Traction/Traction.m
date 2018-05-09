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
E_2=(sigma_2(1000)-sigma_2(300))/(epsilon_2(1000)-epsilon_2(300))
epsilon_f_2=xlsread('X200-180417-2.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_2(i)<=(epsilon_2(i)-0.002)*E_2)
    sigma_y_2=sigma_2(i)
    break;
    end
end
%plot(epsilon_2,sigma_2)

d_o_3= xlsread('X200-180417-3.xls','Résultats X200-18...','H3')/1000;
F_3 = xlsread('X200-180417-3.xls','Valeurs X200-1804...','C4:C13460');
sigma_3 = F_3/pi/(d_o_3/2)^2/10^6;% [MPa]
dl_3= xlsread('X200-180417-3.xls','Valeurs X200-1804...','D4:D13460');
epsilon_3 = dl_3/A;
E_3=(sigma_3(1000)-sigma_3(300))/(epsilon_3(1000)-epsilon_3(300))
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
E_16=(sigma_16(1000)-sigma_16(300))/(epsilon_16(1000)-epsilon_16(300))
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
E_17=(sigma_17(1000)-sigma_17(300))/(epsilon_17(1000)-epsilon_17(300))
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
E_A=(sigma_A(1000)-sigma_A(300))/(epsilon_A(1000)-epsilon_A(300))
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
%plot(epsilon_4,sigma_4)

d_o_5= xlsread('X200-180417-5.xls','Résultats X200-18...','H3')/1000;
F_5 = xlsread('X200-180417-5.xls','Valeurs X200-1804...','C4:C13460');
sigma_5 = F_5/pi/(d_o_5/2)^2/10^6;% [MPa]
dl_5= xlsread('X200-180417-5.xls','Valeurs X200-1804...','D4:D13460');
epsilon_5 = dl_5/A;
E_5=(sigma_5(1000)-sigma_5(100))/(epsilon_5(1000)-epsilon_5(100))
UTS_5=xlsread('X200-180417-5.xls','Résultats X200-18...','C3')/pi/(d_o_5/2)^2
epsilon_f_5=xlsread('X200-180417-5.xls','Résultats X200-18...','G3')/A
for i=1:10000 
    if (sigma_5(i)<=(epsilon_5(i)-0.002)*E_5)
    sigma_y_5=sigma_5(i)
    break;
    end
end
plot(epsilon_5,sigma_5)

d_o_6= xlsread('X200-180417-6.xls','Résultats','H3')/1000;
F_6 = xlsread('X200-180417-6.xls','X200-180417-6','C4:C13460');
sigma_6 = F_6*4/pi/(d_o_1)^2/10^6;
dl_6= xlsread('X200-180417-6.xls','X200-180417-6','D4:D13460');
epsilon_6 = dl_6/A;
E_6=(sigma_6(1000)-sigma_6(300))/(epsilon_6(1000)-epsilon_6(300))
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
E_7=(sigma_7(1000)-sigma_7(300))/(epsilon_7(1000)-epsilon_7(300))
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
E_8=(sigma_8(1000)-sigma_8(300))/(epsilon_8(1000)-epsilon_8(300))
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
E_9=(sigma_9(1000)-sigma_9(300))/(epsilon_9(1000)-epsilon_9(300))
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
E_10=(sigma_10(3000)-sigma_10(300))/(epsilon_10(3000)-epsilon_10(300))
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
E_11=(sigma_11(400)-sigma_11(100))/(epsilon_11(400)-epsilon_11(100))
UTS_11=xlsread('X200-180417-11.xls','Résultats X200-18...','C3')/pi/(d_o_11/2)^2
epsilon_f_11=xlsread('X200-180417-11.xls','Résultats X200-18...','G3')/10
for i=1:10000 
    if (sigma_11(i)<=(epsilon_11(i)-0.002)*E_11)
    sigma_y_11=sigma_11(i)
    break;
    end
end
plot(epsilon_11,sigma_11)

d_o_B= xlsread('X200-180417-B.xls','Résultats X200-18...','H3')/1000;
F_B= xlsread('X200-180417-B.xls','Valeurs X200-1804...','C4:C13460');
sigma_B = F_B/pi/(d_o_B/2)^2/10^6;% [MPa]
dl_B= xlsread('X200-180417-B.xls','Valeurs X200-1804...','D4:D13460');
epsilon_B = dl_B/A;
E_B=(sigma_B(3000)-sigma_B(300))/(epsilon_B(3000)-epsilon_B(300))
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
E_13=(sigma_13(3000)-sigma_13(300))/(epsilon_13(3000)-epsilon_13(300))
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
E_14=(sigma_14(3000)-sigma_14(300))/(epsilon_14(3000)-epsilon_14(300))
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


%MOYENNES
%Y1avg = interp1(X1,Y1,Xavg);
% Y2avg = interp1(X2,Y2,Xavg);
% .
% .
% Y5avg = interp1(X5,Y5,Xavg);
% % Compute the average of Y for the Xavg
% Yavg = mean([Y1avg Y2avg ... Y5avg],2); % assuming Ys are column vectors