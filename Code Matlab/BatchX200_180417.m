%%%%%%%%%%%%%%%%%%%%%%%
%% BATCH X200-180417-- Memoire %%
%%%%%%%%%%%%%%%%%%%%%%%
%Script permettant d'afficher divers graphes renseignant � propos de
%la densit� et la duret� des �chantillons produits lors du batch
%X200-180417


%Comparaison des techniques de mesure de densit� pour D, E et F
 figure;
 c = categorical({'1','2','3'});
 hold on
Densite = [99.4417 99.64;99.5429 99.7;99.4298 99.67];
 bar(Densite);
 %bar([1 2 3 4 5],Archp);
errorbar([0.85 1.15;1.85 2.15;2.85 3.15],Densite,[0.05 0.08; 0.04 0.06; 0.05 0.08],'o');
%errorbar([1 2 3 4 5],Archp,[0.1,0.17,0.11,0.19,0.12],'o');
set(gca, 'XTick', 1:3,'XTickLabel',{'D';'E';'F'});
ylim([99 100])
legend('Archim�de apr�s polissage', 'Microscope optique');

%Comparaison des techniques de mesure de densit� pour 25

 figure;
 c = categorical({'1','2','3','4','5'});
 hold on
Densdur = [99.87 132 ;99.75 140;99.78 140;99.79 139;99.84 138];
 bar(Densdur);
 %bar([1 2 3 4 5],Archp);
errorbar([0.85 1.15;1.85 2.15;2.85 3.15;3.85 4.15;4.85 5.15],Densdur,[0.03 0.89; 0.1 1.67; 0.03 3.64; 0.08 1.74; 0.02 1.05],'o');
%errorbar([1 2 3 4 5],Archp,[0.1,0.17,0.11,0.19,0.12],'o');
set(gca, 'XTick', 1:5,'XTickLabel',{'1';'2';'3';'4';'5'});
ylim([99 100])
legend('Archim�de apr�s polissage', 'Microscope optique');
