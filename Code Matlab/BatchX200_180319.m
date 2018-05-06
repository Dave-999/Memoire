%%%%%%%%%%%%%%%%%%%%%%%
%% BATCH X200-180319 -- Memoire %%
%%%%%%%%%%%%%%%%%%%%%%%
%Script permettant d'afficher divers graphes renseignant à propos de
%la densité et la dureté des échantillons produits lors du batch X200-180109


%Comparaison des techniques de mesure de densité
 figure;
 c = categorical({'1','2','3','4','5'});
 hold on
Densite = [99.8973 99.88 ;99.8015 99.81;99.6060 99.79;99.7708 99.85;99.6832 99.87];
 bar(Densite);
 %bar([1 2 3 4 5],Archp);
errorbar([0.85 1.15;1.85 2.15;2.85 3.15;3.85 4.15;4.85 5.15],Densite,[0.03 0.04; 0.01 0.04; 0.06 0.08; 0.07 0.03; 0.07 0.08],'o');
%errorbar([1 2 3 4 5],Archp,[0.1,0.17,0.11,0.19,0.12],'o');
set(gca, 'XTick', 1:5,'XTickLabel',{'1';'2';'3';'4';'5'});
ylim([99 100])
legend('Archimède après polissage', 'Microscope optique');

%Eprouvette 25
