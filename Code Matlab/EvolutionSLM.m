%% Graphes évolution technologie SLM
close all
Total=[46 32 53 55 77 99 112 214 278];
%Metals
Al=[2 3 5 8 7 12 23 43 65];
AlSi10Mg=[0 0 0 3 1 5 10 14 29];
Steel=[3 2 4 3 12 8 13 33 41];
Ti=[2 1 8 8 13 19 20 49 79];
Ni=[6 1 1 3 10 4 9 23 22];
Cu=[6 1 1 1 3 3 2 6 13];
%AllMetals=[6 11 23 25 33 53 74 126 201];
%Autres
Comp=[7 1 3 5 3 8 10 16 22];
Ceramic=[1 1 0 2 2 5 3 3 7];

x=1:9
plot(x,Al,x,Steel,x,Ti,x,Ni,x,Cu)%x,Allmetals)
hold on
plot(x,AlSi10Mg,'--');
legend('Al and Al alloys','Fe and steels','Ti and Ti alloys','Ni and Ni alloys','Cu and Cu alloys','AlSi10Mg')
set(gca, 'XTick', 1:9,'XTickLabel',{'2009';'2010';'2011';'2012';'2013';'2014';'2015';'2016';'2017'});
xlabel('Year')
ylabel('Number of research publications on SLM')
figure
plot (x,Total,x,Comp,x,Ceramic)
legend('All', 'Composites','Ceramics')
set(gca, 'XTick', 1:9,'XTickLabel',{'2009';'2010';'2011';'2012';'2013';'2014';'2015';'2016';'2017'});
xlabel('Year')
ylabel('Number of research publications on SLM')