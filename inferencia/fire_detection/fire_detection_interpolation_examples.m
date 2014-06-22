clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

% Parámetros para generar gráficas
showTitle = false;
showLegend = false;
exportTikz = true;

% Índice de solapamiento
Os.f = O.maxmin();
Os.name = 'Oz';

%Riesgo bajo
fire_detection_interpolation_plot(Os, @min, @mean, 25, 0, 200, 20, 70, 'showTitle', showTitle, 'showLegend', showLegend, 'exportTikz', exportTikz);

% Riesgo bajo-medio
fire_detection_interpolation_plot(Os, @min, @mean, 30, 20, 500, 50, 40, 'showTitle', showTitle, 'showLegend', showLegend, 'exportTikz', exportTikz);

% Riesgo medio
fire_detection_interpolation_plot(Os, @min, @mean, 40, 50, 500, 30, 40, 'showTitle', showTitle, 'showLegend', showLegend, 'exportTikz', exportTikz);

%Riesgo medio-alto
fire_detection_interpolation_plot(Os, @min, @mean, 80, 80, 700, 20, 30, 'showTitle', showTitle, 'showLegend', showLegend, 'exportTikz', exportTikz);

%Riesgo alto
fire_detection_interpolation_plot(Os, @min, @mean, 100, 90, 900, 10, 20, 'showTitle', showTitle, 'showLegend', showLegend, 'exportTikz', exportTikz);

%Riesgo muy-alto
fire_detection_interpolation_plot(Os, @min, @mean, 120, 100, 1000, 10, 10, 'showTitle', showTitle, 'showLegend', showLegend, 'exportTikz', exportTikz);