%%%%%%%%%%%%%%%%%%%%%%%
%% BATCH 2 - Memoire %%
%%%%%%%%%%%%%%%%%%%%%%%
%% Script affichant l'�volution de la granulom�trie
close all

D0=[0.721,0.791,0.868,0.953,1.047,1.149,1.261,1.385,...
    1.52,1.668,1.832,2.011,2.207,2.423,2.66,2.92,3.205,3.519,3.863,4.24,...
    4.655,5.11,5.61,6.158,6.76,7.421,8.147,8.943,9.817,10.78,11.83,12.99,...
    14.26,15.65,17.18,18.86,20.7,22.73,24.95,27.39,30.07,33.01,36.24,39.78,...
    43.67,47.94,52.62,57.77,63.41,69.61,76.42,83.89,92.09,101.1,111,121.8,133.7]

%10 aout 2017 (pas de tamisage)
P0=[0.000365,0.00485,0.0145,0.0225,0.0275,0.03,0.03,0.0285,0.026,0.023,...
    0.02,0.017,0.015,0.014,0.015,0.017,0.0215,0.0285,0.038,0.051,...
    0.0685,0.0885,0.11,0.14,0.165,0.195,0.23,0.265,0.305,0.36,0.43,...
    0.54,0.705,0.935,1.265,1.715,2.305,3.065,4.015,5.16,6.5,7.95,9.34,...
    10.4,10.65,9.96,8.3,6.06,3.85,2.115,1.01,0.46,0.275,0.255,0.215,0.086,0.0073]

D1=[0.496,0.545,0.598,0.656,0.721,0.791,0.868,0.953,1.047,1.149,1.261,1.385,...
    1.52,1.668,1.832,2.011,2.207,2.423,2.66,2.92,3.205,3.519,3.863,4.24,...
    4.655,5.11,5.61,6.158,6.76,7.421,8.147,8.943,9.817,10.78,11.83,12.99,...
    14.26,15.65,17.18,18.86,20.7,22.73,24.95,27.39,30.07,33.01,36.24,39.78,...
    43.67,47.94,52.62,57.77,63.41,69.61,76.42,83.89,92.09,101.1,111,121.8,133.7]

%23 octobre 2017 (+ tamisage)
P1=[0.000335,0.0045,0.0135,0.0215,0.027,0.031,0.033,0.0325,0.0305,0.0275,...
    0.0245,0.022,0.02,0.018,0.018,0.019,0.02,0.0225,0.025,0.0295,0.036,...
    0.046,0.0605,0.0805,0.11,0.145,0.19,0.24,0.305,0.375,0.445,0.535,...
    0.645,0.77,0.93,1.14,1.415,1.775,2.245,2.825,3.545,4.39,5.345,6.365,...
    7.385,8.3,8.99,9.265,8.925,7.83,6.11,4.17,2.495,1.295,0.53,0.135,...
    0.0356,0.0455,0.05,0.0215,0.0017]

D2ap=[0.375,0.412,0.452,0.496,0.545,0.598,0.656,0.721,0.791,0.868,0.953,1.047,1.149,1.261,1.385,...
    1.52,1.668,1.832,2.011,2.207,2.423,2.66,2.92,3.205,3.519,3.863,4.24,...
    4.655,5.11,5.61,6.158,6.76,7.421,8.147,8.943,9.817,10.78,11.83,12.99,...
    14.26,15.65,17.18,18.86,20.7,22.73,24.95,27.39,30.07,33.01,36.24,39.78,...
    43.67,47.94,52.62,57.77,63.41,69.61,76.42,83.89,92.09,101.1,111,121.8,133.7]

P2a=[0.00525,0.00975,0.0155,0.021,0.0245,0.027,0.028,0.0275,0.0265,0.0245,0.022,...
0.0195,0.018,0.017,0.018,0.0195,0.0215,0.0245,0.027,0.029,0.031,0.032,...
0.033,0.0365,0.0425,0.0545,0.075,0.105,0.15,0.205,0.275,0.365,0.475,...
0.6,0.75,0.93,1.135,1.385,1.68,2.04,2.465,2.98,3.57,4.26,5.03,5.845,...
6.63,7.325,7.855,8.15,8.125,7.665,6.65,5.17,3.55,2.145,1.1,0.395,...
0.0715,0.02335,0.06,0.065,0.0175,0.00085]

P2p=[0.00515,0.00965,0.0155,0.0205,0.0245,0.027,0.028,0.028,0.0265,...
    0.025,0.022,0.02,0.018,0.016,0.016,0.017,0.018,0.02,0.022,0.0245,...
    0.0265,0.0285,0.0315,0.0365,0.045,0.059,0.0805,0.11,0.15,0.205,...
    0.265,0.345,0.43,0.53,0.65,0.795,0.955,1.16,1.41,1.715,2.105,...
    2.575,3.15,3.83,4.61,5.475,6.375,7.225,7.965,8.49,8.655,8.3,7.305,...
    5.75,3.98,2.425,1.265,0.51,0.145,0.0725,0.13,0.165,0.076,0.00665]

D4=D2ap;

P4=[0.005277778,0.009952778,0.016083333,0.021083333,0.024888889,0.027527778,0.028888889,0.028444444,0.027166667,0.025166667,0.022722222,0.020722222,0.018916667,0.018,0.017555556,0.018638889,0.020638889,0.022361111,0.024444444,0.025805556,0.02625,0.026611111,0.027611111,0.030694444,0.037527778,0.049805556,0.070972222,0.104444444,0.15,0.21,0.284444444,0.374444444,0.484444444,0.608055556,0.7525,0.916111111,1.110555556,1.330555556,1.596944444,1.916944444,2.299722222,2.756944444,3.306111111,3.948055556,4.679166667,5.476666667,6.292222222,7.061666667,7.729166667,8.204722222,8.365555556,8.038055556,7.090555556,5.601111111,3.906388889,2.405277778,1.278055556,0.522777778,0.148722222,0.065480556,0.104722222,0.13,0.059222222,0.005272222];

D3 =[0.375,0.412,0.452,0.496,0.545,0.598,0.656,0.721,0.791,0.868,0.953,1.047,1.149,1.261,1.385,...
    1.52,1.668,1.832,2.011,2.207,2.423,2.66,2.92,3.205,3.519,3.863,4.24,...
    4.655,5.11,5.61,6.158,6.76,7.421,8.147,8.943,9.817,10.78,11.83,12.99,...
    14.26,15.65,17.18,18.86,20.7,22.73,24.95,27.39,30.07,33.01,36.24,39.78,...
    43.67,47.94,52.62,57.77,63.41,69.61,76.42,83.89];

P3 =[0.003608333,0.006666667,0.010666667,0.013996111,0.018905556,0.025944444,0.030583333,0.033305556,0.03375,0.032083333,0.029222222,0.026333333,0.023416667,0.022583333,0.023361111,0.026055556,0.031,0.036944444,0.043083333,0.049055556,0.053583333,0.056583333,0.058972222,0.062444444,0.068111111,0.079861111,0.099388889,0.130833333,0.172777778,0.23,0.3,0.386388889,0.486388889,0.597222222,0.723611111,0.864444444,1.036388889,1.246388889,1.501666667,1.821666667,2.221666667,2.698888889,3.274444444,3.948055556,4.713611111,5.555555556,6.4175,7.226666667,7.926666667,8.415833333,8.556666667,8.196388889,7.196388889,5.654444444,3.9625,2.349166667,0.972777778,0.196944444,0.009380556];

D5=D3;

P5 =[0.0065,0.011916667,0.019861111,0.025703333,0.031180556,0.035405556,...
    0.038,0.03775,0.036416667,0.033083333,0.029027778,0.02525,0.021277778,...
    0.019305556,0.0185,0.019333333,0.021333333,0.024694444,0.027777778,...
    0.030222222,0.032666667,0.034194444,0.036083333,0.040888889,0.050333333,...
    0.067944444,0.096388889,0.140833333,0.200833333,0.286111111,0.389722222,...
    0.516944444,0.672222222,0.849444444,1.056666667,1.295555556,1.57,1.887222222,...
    2.254444444,2.677222222,3.160833333,3.699166667,4.301111111,4.955833333,...
    5.651666667,6.338333333,6.935,7.353611111,7.543055556,7.476944444,...
    7.120833333,6.431666667,5.346111111,3.965,2.593611111,1.513055556,...
    0.736388889,0.200833333,0.014];

DN = [0.375,0.412,0.452,0.496,0.545,0.598,0.656,0.721,0.791,0.868,0.953,1.047,1.149,1.261,1.385,...
    1.52,1.668,1.832,2.011,2.207,2.423,2.66,2.92,3.205,3.519,3.863,4.24,...
    4.655,5.11,5.61,6.158,6.76,7.421,8.147,8.943,9.817,10.78,11.83,12.99,...
    14.26,15.65,17.18,18.86,20.7,22.73,24.95,27.39,30.07,33.01,36.24,39.78,...
    43.67,47.94,52.62,57.77,63.41,69.61,76.42,83.89,92.09];   

PN = [0.006786111,0.012641667,0.020611111,0.027384444,0.031872222,0.035944444,0.037805556,0.0375,0.035833333,0.032722222,0.028722222,0.024361111,0.021194444,0.018583333,0.017416667,0.017083333,0.018833333,0.02175,0.024583333,0.027666667,0.031305556,0.034472222,0.038916667,0.045638889,0.055444444,0.071694444,0.096333333,0.13,0.176388889,0.237222222,0.314444444,0.405277778,0.511666667,0.637222222,0.781666667,0.948055556,1.146111111,1.378888889,1.6625,1.999722222,2.407777778,2.901388889,3.471388889,4.138611111,4.880555556,5.666111111,6.448055556,7.162777778,7.745833333,8.130555556,8.214444444,7.838055556,6.876111111,5.387777778,3.721111111,2.242777778,1.131944444,0.375833333,0.050555556,0.001530556]


xx=linspace(0,100,1000)
P0s = spline(D0,P0,xx);
P1s = spline(D1,P1,xx);
P2as = spline(D2ap,P2a,xx);
P2ps = spline(D2ap,P2p,xx);
P3s = spline(D3,P3,xx);
P4s = spline(D4,P4,xx);
P5s = spline(D5,P5,xx);
PNs= spline(DN,PN,xx);
plot(xx,P0s,'--')
hold on
plot(xx,P1s)
hold on
plot(xx,P2as)
plot(xx,P2ps,'--')
plot(xx,P3s)
plot(xx,P4s)
plot(xx,P5s)
plot(xx,PNs)
legend('10 aout 2017 (pas de tamisage)','23 octobre 2017 (+ tamisage)','12 janvier 2018 (+tamisage)','9 janvier 2018 (pas de tamisage)','21 f�vrier 2018 (+tamisage)??','13 mars 2018 (+tamisage)??','17 avril 2018 (+tamisage)','Poudre neuve')
xlabel('Diam�tre [\mu m]')
ylabel('Pourcentage [%]')