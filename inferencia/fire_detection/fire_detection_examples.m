clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

% Índice de solapamiento
Os.f = O.maxmin();
Os.name = 'Oz';

%Riesgo bajo
fire_detection_interpolation(Os, @min, @mean, 25,0,200,20,70);

% Riesgo bajo-medio
fire_detection_interpolation(Os, @min, @mean, 30,20,500,50,40);

% Riesgo medio
fire_detection_interpolation(Os, @min, @mean, 40,50,500,30,40);

%Riesgo medio-alto
fire_detection_interpolation(Os, @min, @mean, 80,80,700,20,30);

%Riesgo alto
fire_detection_interpolation(Os, @min, @mean, 100,90,900,10,20);

%Riesgo muy-alto
fire_detection_interpolation(Os, @min, @mean, 120,100,1000,10,10);