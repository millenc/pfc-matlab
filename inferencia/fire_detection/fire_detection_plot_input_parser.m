% Parser de parámetros opcionales para las funciones fire_detection_mamdani_plot y fire_detection_interpolation_plot. 
% Parámetros opcionales:
% showTitle = true/false: Mostrar el título de la gráfica
% showLegend = true/false: Mostrar la leyenda de la gráfica.
% exportTikz = true/false: Exportar la gráfica en formato tikz.

function p = fire_detection_plot_input_parser()
p = inputParser;
defaultShowTitle = true;
defaultShowLegend = true;
defaultExportTikz = false; 

addOptional(p,'showTitle',defaultShowTitle);
addOptional(p,'showLegend',defaultShowLegend);
addOptional(p,'exportTikz',defaultExportTikz);
end