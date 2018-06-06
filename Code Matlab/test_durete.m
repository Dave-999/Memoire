treatment={'A-B';'150-2';'200-2';'225-2';'250-2';'300-5m';'300-1';'300-2';'360-1'}
Durete=[139.9,150.95,133.65,116.74,118.65,101.76,91.2,86.7,70.6]

figure;
colormap cool;
bar(Durete)
hold on
euh=errorbar(Durete,[0.0,3.20,3.82,2.63,0.84,2.26,2.75,0.86,0.52])
set(euh, "linestyle", "none");
set(euh, "marker", "o");
set(euh, "color", "k");
set(gca, 'XTickLabel',treatment, 'XTick',1:numel(treatment));
%xlabel('Type of treatment');
%ylim([0,10]) % yaxis neu setzen
%xlim([0,10])
ylabel('Vickers hardness [HV]') ;