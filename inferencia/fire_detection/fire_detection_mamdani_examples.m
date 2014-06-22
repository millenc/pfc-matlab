clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

%Riesgo bajo
fire_detection_mamdani_plot(25,0,200,20,70);

% Riesgo bajo-medio
fire_detection_mamdani_plot(30,20,500,50,40);

% Riesgo medio
fire_detection_mamdani_plot(40,50,500,30,40);

%Riesgo medio-alto
fire_detection_mamdani_plot(80,80,700,20,30);

%Riesgo alto
fire_detection_mamdani_plot(100,90,900,10,20);

%Riesgo muy alto
fire_detection_mamdani_plot(120,100,1000,10,10);