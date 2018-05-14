%%%%%%%%%%%%%%%%%%%%%%%
%% BATCH 2 - Memoire %%
%%%%%%%%%%%%%%%%%%%%%%%
%Script permettant d'afficher divers graphes renseignant à propos de
%la densité et la dureté des échantillons produits lors du batch X200-180109

close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% POSITION DES ECHANTILLONS  %
% SUR LA PLAQUE              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

X7=[1.3,1.7,2.1,...
    5.6,6,6.4,...
    1.3,1.5,1.7,...
    3.9,4.1,4.3,...
    6.45,6.7,6.9];

X8= [3.5,3.85,4.25,...
    7.9,8.35,8.75,...
    2.6,2.8,3,...
    5.25,5.45,5.65,...
    7.8,8,8.2];

Y7=[8.8,7.2,5.45,...
    9,7.4,5.6,...
    3.3,2.2,1.1,...
    3.45,2.35,1.25,...
    3.6,2.5,1.4];
 
Y8=[8.6,6.85,5.1,...
    8.75,7,5.25,...
    3.2,2.1,1,...
    3.35,2.25,1.15,...
    3.5,2.4,1.3];

%%%%%%%%%%%%%
%% DENSITE %%
%%%%%%%%%%%%%

rho7=[99.33,99.45,99.44,99.45,99.50,99.52,99.48,99.48,99.37,99.38,...
      99.29,99.24,99.49,99.37,99.31];
rho7_up=[99.33+0.019,99.45+0.016,99.44+0.083,99.45+0.027,99.50+0.039,...
    99.52+0.065,99.48+0.045,99.48+0.068,99.37+0.069,99.38+0.025,...
      99.29+0.029,99.24+0.059,99.49+0.066,99.37+0.083,99.31+0.030];
rho7_low=[99.33-0.019,99.45-0.016,99.44-0.083,99.45-0.027,99.50-0.039,...
    99.52-0.065,99.48-0.045,99.48-0.068,99.37-0.069,99.38-0.025,...
      99.29-0.029,99.24-0.059,99.49-0.066,99.37-0.083,99.31-0.030];

rho8=[99.27,99.20,99.29,99.50,99.37,99.51,99.18,99.44,99.41,99.39,...
      99.31,99.29,99.54,99.35,99.43];
rho8_up=[99.27+0.066,99.20+0.095,99.29+0.062,99.50+0.04,99.37+0.013,...
    99.51+0.077,99.18+0.1,99.44+0.074,99.41+0.033,99.39+0.062,...
      99.31+0.04,99.29+0.034,99.54+0.084,99.35+0.033,99.43+0.07];
rho8_low=[99.27-0.066,99.20-0.095,99.29-0.062,99.50-0.04,99.37-0.013,...
    99.51-0.077,99.18-0.1,99.44-0.074,99.41-0.033,99.39-0.062,...
      99.31-0.04,99.29-0.034,99.54-0.084,99.35-0.033,99.43-0.07];

%%TYPE 7  

%%3D
tri = delaunay(X7,Y7);
plot(X7,Y7,'.')

[r,c] = size(tri);
disp(r)

% Avec TRISURF

h = trisurf(tri, X7, Y7, rho7);
axis vis3d

%axis off
l = light('Position',[-50 -15 29])
%set(gca,'CameraPosition',[208 -50 7687])
lighting phong
shading interp
colorbar EastOutside
hold on
scatter3(X7,Y7,rho7)
hold on 
scatter3(X7,Y7,rho7_up)
scatter3(X7,Y7,rho7_low)
%(X7,Y7,rho7)
%plot(X,Y,'*')
xlim([0,10])
ylim([0,10])
zlim([99.1,99.7])

newmap = jet;                    %starting map
ncol = size(newmap,1);           %how big is it?
zpos = 1 + floor(2/3 * ncol);    %2/3 of way through
colormap(newmap);                %activate it

xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Densité relative apparente [%]')

figure;
F=scatter3(X7, Y7, rho7, [], rho7,'filled');
xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Densité relative apparente [%]')
xlim([0,10])
ylim([0,10])
zlim([99,99.7])
colorbar 
%%
%Plots "moyennés"
%Evolution selon x
figure;
rho7_x1=[mean(rho7(1,1:3)) mean(rho7(1,4:6))];
rho7_x2=[mean(rho7(1,7:9)) mean(rho7(1,10:12)) mean(rho7(1,13:15))];
    plot([1.7,6] , rho7_x1);
    hold on
    plot([1.5,4.1,6.7] , rho7_x2);
    legend('Distant cubes(y>4.5)','Close cubes (y<4.5)')
xlabel('x [cm]')
ylabel('Apparent relative density [%]')    
%Evolution selon y
figure;
rho7_y=[(rho7(1,1)+rho7(1,4))/2 (rho7(1,2)+rho7(1,5))/2 (rho7(1,3)+rho7(1,6))/2 (rho7(1,7)+rho7(1,10)+rho7(1,13))/3 (rho7(1,8)+rho7(1,11)+rho7(1,14))/3  (rho7(1,9)+rho7(1,12)+rho7(1,15))/3];
    plot([8.9 7.1 5.5] , rho7_y(1:3));
    hold on
    plot([3.45 2.35 1.25], rho7_y(4:6));
            line([4.5 4.5 ], [99 99.6])
xlabel('y [cm]')
    legend('Distant cubes(y>4.5)','Close cubes (y<4.5)')
ylabel('Apparent relative density [%]')    
 %%TYPE 8

figure
tri = delaunay(X8,Y8);
plot(X8,Y8,'.')

[r,c] = size(tri);
disp(r)

%% Plot it with TRISURF

h = trisurf(tri, X8, Y8, rho8);
axis vis3d

%% Clean it up

%axis off
l = light('Position',[-50 -15 29])
%set(gca,'CameraPosition',[208 -50 7687])
lighting phong
shading interp
colorbar EastOutside
hold on
scatter3(X8,Y8,rho8)
scatter3(X8,Y8,rho8_up)
scatter3(X8,Y8,rho8_low)
%(X7,Y7,rho7)
%plot(X,Y,'*')
xlim([0,10])
ylim([0,10])
zlim([99,99.7])

newmap = jet;                    %starting map
ncol = size(newmap,1);           %how big is it?
zpos = 1 + floor(2/3 * ncol);    %2/3 of way through
colormap(newmap);                %activate it

xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Densité relative apparente [%]')

figure;
F=scatter3(X8, Y8, rho8, [], rho8,'filled');
xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Densité relative apparente [%]')
xlim([0,10])
ylim([0,10])
zlim([99,99.7])
colorbar 
%%
%Plots "moyennés"
%Evolution selon x
figure;
rho8_x1=[mean(rho8(1,1:3)) mean(rho8(1,4:6))];
rho8_x2=[mean(rho8(1,7:9)) mean(rho8(1,10:12)) mean(rho8(1,13:15))];
    plot([3.85,8.35] , rho8_x1);
    hold on
    plot([2.8,5.45,8] , rho8_x2);
    legend('Cubes en y>4.5','Cubes en y<4.5')
    legend('Distant cubes(y>4.5)','Close cubes (y<4.5)')
xlabel('x [cm]')
ylabel('Apparent relative density [%]')    
%Evolution selon y
figure;
rho8_y=[(rho8(1,1)+rho8(1,4))/2 (rho8(1,2)+rho8(1,5))/2 (rho8(1,3)+rho8(1,6))/2 (rho8(1,7)+rho8(1,10)+rho8(1,13))/3 (rho8(1,8)+rho8(1,11)+rho8(1,14))/3  (rho8(1,9)+rho8(1,12)+rho8(1,15))/3];
    plot([8.9 7.1 5.5] , rho8_y(1:3));
    hold on
    plot([3.45 2.35 1.25], rho8_y(4:6));
    xlabel('y [cm]')
        line([4.5 4.5 ], [99 99.6])
    legend('Distant cubes(y>4.5)','Close cubes (y<4.5)')
ylabel('Apparent relative density [%]')    

% %LES DEUX
% figure
% tri = delaunay([X7 X8],[Y7 Y8]);
% plot([X7 X8],[Y7 Y8],'.')
% 
% [r,c] = size(tri);
% disp(r)
% 
% %% Plot it with TRISURF
% 
% h = trisurf(tri, [X7 X8], [Y7 Y8], [rho7 rho8]);
% axis vis3d
% 
% %% Clean it up
% 
% %axis off
% l = light('Position',[-50 -15 29])
% %set(gca,'CameraPosition',[208 -50 7687])
% lighting phong
% shading interp
% colorbar EastOutside
% hold on
% scatter3(X7,Y7,rho7)
% scatter3(X8,Y8,rho8)
% %(X7,Y7,rho7)
% %plot(X,Y,'*')
% xlim([0,10])
% ylim([0,10])
% zlim([99.1,99.6])
% 
% newmap = jet;                    %starting map
% ncol = size(newmap,1);           %how big is it?
% zpos = 1 + floor(2/3 * ncol);    %2/3 of way through
% colormap(newmap);                %activate it
% 
% xlabel('x')
% ylabel('y')
% zlabel('Densité relative apparente')

%
%Densité en fonction de l'ordre de fabrication

ordre7=[1,3,4,13,14,15,2,7,10,5,8,11,6,9,12]
ordre8=[16,18,19,28,29,30,17,22,25,20,23,26,21,24,27]
P7 = polyfit(ordre7,rho7,1);
    yfit7 = P7(1)*ordre7+P7(2);
    P8 = polyfit(ordre8,rho8,1);
    yfit8 = P8(1)*ordre8+P8(2);
figure
err7 = [0.019,0.016,0.083,0.027,0.039,0.065,0.045,0.068,0.069,0.025,0.029,0.059,0.066,0.083,0.030]
err8 = [0.066,0.095,0.062,0.040,0.013,0.077,0.100,0.074,0.033,0.062,0.040,0.034,0.084,0.033,0.070]
errorbar(ordre7,rho7,err7,'o')
hold on
errorbar(ordre8,rho8,err8,'o')
hold on

plot(ordre7,yfit7)
plot(ordre8,yfit8)
xlabel('Scan order [-]')
ylabel('Apparent relative density [%]')
legend('Type "7"', 'Type "8"', 'Linear approximation (type "7")', 'Linear approximation (type "8")')

 %Comparaison des techniques de mesure de densité
 figure;
 c = categorical({'7c','7h','7m','7n','7o'});
 hold on
Densite = [99.33 99.77 99.77;99.52 99.32 99.51;99.29 99.49 99.68;99.24 99.49 99.51;99.49 99.48 99.52];
 bar(Densite);
 %bar([1 2 3 4 5],Archp);
errorbar([0.77 1 1.23;1.77 2 2.23;2.77 3 3.23;3.77 4 4.23;4.77 5 5.23;],Densite,[0.019 0.1 0.09; 0.065 0.17 0.13; 0.029 0.11 0.11; 0.059 0.19 0.10; 0.066 0.12 0.08],'o');
%errorbar([1 2 3 4 5],Archp,[0.1,0.17,0.11,0.19,0.12],'o');
set(gca, 'XTick', 1:5,'XTickLabel',{'7c';'7h';'7m';'7n';'7o'});
ylim([99 100])
legend('Archimède "as built"', 'Archimède après polissage', 'Microscope optique');
%set(gca,'xticklabel',{'7c';'7h';'7m';'7n';'7o'})

 %scatter(













%%%%%%%%%%%%
%% DURETE %%
%%%%%%%%%%%%

H7=[140.957,138.629,140.050,141.350,139.422,139.200,140.272,140.850,...
    140.550,139.800,138.950,139.950,138.700,140.550,138.978];
CI_7= [1.381,1.409,0.792,1.373,1.783,0.924,1.325,0.888,0.723,1.176,...
    1.373,1.805,1.435,0.723,1.659];
H7_up=H7+CI_7;
H7_low=H7-CI_7;

H8=[139.422,138.800,138.050,138.322,138.225,139.486,134.622,138.050,...
    138.006,136.472,138.978,138.978,137.739,137.788,137.788];
CI_8= [1.377,1.829,1.198,1.477,1.339,1.115,2.783,1.868,1.867,1.567,...
    1.659,1.524,1.570,1.158,1.158];
H8_up=H8+CI_8;
H8_low=H8-CI_8;
%SANS LA 2EME SEANCE DE MESURES
% H7=[141.433,139.867,140.467,142.600,137.300,139.200,140.613,140.467,...
% 140.467,139.200,140.467,137.933,139.867,140.467,138.400];
% 
% H7_up=[141.433+2.356,139.867+1.307,140.467+1.307,142.600+1.877,...
%     137.300+2.772,139.200+1.6,140.613+1.877,140.467+1.307,...
% 140.467+1.307,139.200+1.753,140.467+1.307,137.933+1.307,139.867+1.307,...
% 140.467+1.307,138.400+2.659];
% 
% H7_low=[141.433-2.356,139.867-1.307,140.467-1.307,142.600-1.877,...
%     137.300-2.772,139.200-1.6,140.613-1.877,140.467-1.307,...
% 140.467-1.307,139.200-1.753,140.467-1.307,137.933-1.307,139.867-1.307,...
% 140.467-1.307,138.400-2.659];
% 
% H8=[141.433,138.800,137.933,137.788,139.200,139.867,135.500,136.375,...
% 137.300,136.667,140.467,140.350,138.533,138.700,138.700];
% 
% H8_up=[141.433+1.307,138.800+3.136,137.933+1.307,137.788+1.877,...
%     139.200+2.147,139.867+1.307,135.500+1.6,136.375+2.53,...
% 137.300+3.201,136.667+1.307,140.467+1.307,140.350+1.568,138.533+1.307,...
% 138.700+1.877,138.700+1.877];
% 
% H8_low=[141.433-1.307,138.800-3.136,137.933-1.307,137.788-1.877,...
%     139.200-2.147,139.867-1.307,135.500-1.6,136.375-2.53,...
% 137.300-3.201,136.667-1.307,140.467-1.307,140.350-1.568,138.533-1.307,...
% 138.700-1.877,138.700-1.877];

%%TYPE 7  

%%3D
figure
tri = delaunay(X7,Y7);
plot(X7,Y7,'.')

[r,c] = size(tri);
disp(r)

% Avec TRISURF

h = trisurf(tri, X7, Y7, H7);
axis vis3d

%axis off
l = light('Position',[-50 -15 29])
%set(gca,'CameraPosition',[208 -50 7687])
lighting phong
shading interp
colorbar EastOutside
hold on
scatter3(X7,Y7,H7)
hold on 
scatter3(X7,Y7,H7_up)
scatter3(X7,Y7,H7_low)
%(X7,Y7,H7)
%plot(X,Y,'*')
xlim([0,10])
ylim([0,10])
zlim([135,143])

newmap = jet;                    %starting map
ncol = size(newmap,1);           %how big is it?
zpos = 1 + floor(2/3 * ncol);    %2/3 of way through
colormap(newmap);                %activate it

xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Dureté Vickers [HV]')

figure;
F=scatter3(X7, Y7, H7, [], H7,'filled');
xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Densité relative apparente [%]')
xlim([0,10])
ylim([0,10])
zlim([135,143])
colorbar 
%%
%Plots "moyennés"
%Evolution selon x
figure;
H7_x1=[mean(H7(1,1:3)) mean(H7(1,4:6))];
H7_x2=[mean(H7(1,7:9)) mean(H7(1,10:12)) mean(H7(1,13:15))];
    plot([1.7,6] , H7_x1);
    hold on
    plot([1.5,4.1,6.7] , H7_x2);
xlabel('x [cm]')
ylabel('Vickers hardness [HV]')    
    legend('Distant cubes (en y>4.5)','Close cubes (en y<4.5)')
%Evolution selon y
figure;
H7_y=[(H7(1,1)+H7(1,4))/2 (H7(1,2)+H7(1,5))/2 (H7(1,3)+H7(1,6))/2 (H7(1,7)+H7(1,10)+H7(1,13))/3 (H7(1,8)+H7(1,11)+H7(1,14))/3  (H7(1,9)+H7(1,12)+H7(1,15))/3];
    plot([8.9 7.1 5.5] , H7_y(1:3));
    hold on
    plot([3.45 2.35 1.25], H7_y(4:6));
    
    line([4.5 4.5 ], [138.5 142])
xlabel('y [cm]')
ylabel('Vickers hardness [HV]')    
    legend('Distant cubes (en y>4.5)','Close cubes (en y<4.5)')
 %%TYPE 8

figure
tri = delaunay(X8,Y8);
plot(X8,Y8,'.')

[r,c] = size(tri);
disp(r)

%% Plot it with TRISURF

h = trisurf(tri, X8, Y8, H8);
axis vis3d

%% Clean it up

%axis off
l = light('Position',[-50 -15 29])
%set(gca,'CameraPosition',[208 -50 7687])
lighting phong
shading interp
colorbar EastOutside
hold on
scatter3(X8,Y8,H8)
scatter3(X8,Y8,H8_up)
scatter3(X8,Y8,H8_low)
%(X7,Y7,H7)
%plot(X,Y,'*')
xlim([0,10])
ylim([0,10])
zlim([135,143])

newmap = jet;                    %starting map
ncol = size(newmap,1);           %how big is it?
zpos = 1 + floor(2/3 * ncol);    %2/3 of way through
colormap(newmap);                %activate it

xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Dureté Vickers [HV]')
figure;
F=scatter3(X8, Y8, H8, [], H8,'filled');
xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Densité relative apparente [%]')
xlim([0,10])
ylim([0,10])
zlim([134,143])
colorbar 
%%
%Plots "moyennés"
%Evolution selon x
figure;
H8_x1=[mean(H8(1,1:3)) mean(H8(1,4:6))];
H8_x2=[mean(H8(1,7:9)) mean(H8(1,10:12)) mean(H8(1,13:15))];
    plot([3.85,8.35] , H8_x1);
    hold on
    plot([2.8,5.45,8] , H8_x2);
    xlabel('x [cm]')
ylabel('Vickers hardness [HV]')    
    legend('Distant cubes (en y>4.5)','Close cubes (en y<4.5)')
%Evolution selon y
figure;
H8_y=[(H8(1,1)+H8(1,4))/2 (H8(1,2)+H8(1,5))/2 (H8(1,3)+H8(1,6))/2 (H8(1,7)+H8(1,10)+H8(1,13))/3 (H8(1,8)+H8(1,11)+H8(1,14))/3  (H8(1,9)+H8(1,12)+H8(1,15))/3];
    plot([8.9 7.1 5.5] , H8_y(1:3));
    hold on
    plot([3.45 2.35 1.25], H8_y(4:6));    
    line([4.5 4.5 ], [136 140])
    xlabel('y [cm]')
ylabel('Vickers hardness [HV]')    
    legend('Distant cubes (en y>4.5)','Close cubes (en y<4.5)')
    
%Dureté en fonction de l'ordre de fabrication

ordreH7=[1,3,4,13,14,15,2,7,10,5,8,11,6,9,12]
ordreH8=[16,18,19,28,29,30,17,22,25,20,23,26,21,24,27]
Q7 = polyfit(ordreH7,H7,1);
    yfitH7 = Q7(1)*ordreH7+Q7(2);
    Q8 = polyfit(ordreH8,H8,1);
    yfitH8 = Q8(1)*ordreH8+Q8(2);
figure
errH7 = [1.381,1.409,0.792,1.373,1.783,0.924,1.325,0.888,0.723,1.176,...
    1.373,1.805,1.435,0.723,1.659];
errH8 = [1.377,1.829,1.198,1.477,1.339,1.115,2.783,1.868,1.867,1.567,...
    1.659,1.524,1.570,1.158,1.158];
errorbar(ordreH7,H7,errH7,'o')
hold on
errorbar(ordreH8,H8,errH8,'o')
hold on

plot(ordreH7,yfitH7)
plot(ordreH8,yfitH8)
xlabel('Scan order [-]')
ylabel('Vickers hardness [%]')
legend('Type "7"', 'Type "8"', 'Linear approximation (type "7")', 'Linear approximation (type "8")')


   