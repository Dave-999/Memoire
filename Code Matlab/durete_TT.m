
%%%%%%%%%%%%%%%%%%%%%%%
%% BATCH X200-180220 -- Memoire %%
%%%%%%%%%%%%%%%%%%%%%%%
%Script permettant d'afficher divers graphes renseignant � propos de
%la densit� et la duret� des �chantillons produits lors du batch X200-180220


%Comparaison des techniques de mesure de duret�
 figure;
 c = categorical({'1','2','3','4','5'});
 hold on
Durete = [139.9,150.95,133.65,118.65,86.7,91.2,70.6];
 bar(Durete);
 %bar([1 2 3 4 5],Archp);
%errorbar([0.85 1.15;1.85 2.15;2.85 3.15;3.85 4.15;4.85 5.15],Densite,[0.03 0.04; 0.01 0.04; 0.06 0.08; 0.07 0.03; 0.07 0.08],'o');
errorbar([1 2 3 4 5],Durete,[0.0,3.20,3.82,0.84,0.86,2.75,0.52],'o');
set(gca, 'XTick', 1:5,'XTickLabel',{'No HT','TT150-2','TT200-2','TT250-2','TT300-2','TT300-1','TT360-1'});
%ylim([99 100])
ylabel('Vickers hardness [HV]');