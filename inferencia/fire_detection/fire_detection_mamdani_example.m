clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

%Riesgo bajo
fire_detection_mamdani(25,0,200,20,70);

% Riesgo bajo-medio
fire_detection_mamdani(30,20,500,50,40);

% Riesgo medio
fire_detection_mamdani(40,50,500,30,40);

%Riesgo alto
fire_detection_mamdani(100,90,900,0,20);