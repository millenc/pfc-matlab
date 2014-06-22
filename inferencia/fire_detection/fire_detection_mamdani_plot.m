% Método de Mamdani aplicado a la determinación de riesgos de incendios.
% Esta función pinta la gráfica con los resultados y opcionalmente genera
% un fichero .tikz con dicha gráfica.
% Parámetros:
% temp: Temperatura (ºC).
% smoke: Humo (ppm).
% light: Luz (lux).
% humidity: Humedad (ppm).
% distance: Distancia (m).
% varargin: Parámetros opcionales (ver fire_detection_plot_input_parser()).
%
% Valores devueltos:
% B: Conjunto de salida.
% dc: Valor defusificado centroide.
% db: Valor defusificado bisector.
% dm: Valor defusificado media de máximos.
% ds: Valor defusificado menor de máximos.
% dl: Valor defusificado mayor de máximos.

function [B, dc, db, dm, ds, dl] = fire_detection_mamdani_plot( temp, smoke, light, humidity, distance, varargin )
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

% Parser de parámetros opcionales
p = fire_detection_plot_input_parser();
parse(p,varargin{:});

% Obtener los resultados con el método de Mamdani
[B, dc, db, dm, ds, dl] = fire_detection_mamdani(temp, smoke, light, humidity, distance);

% Pintar gráfico
alw = 0.75;    % AxesLineWidth
fsz = 9;      % Fontsize
lw = 1.2;      % LineWidth
msz = 9;       % MarkerSize

figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
hold on;
hl = plot(threat.get_x(),B,'-k','LineWidth',lw,'MarkerSize',msz);
hdc = plot(dc,B(dc+1),'*b','LineWidth',lw,'MarkerSize',msz);
hdb = plot(db,B(db+1),'+g','LineWidth',lw,'MarkerSize',msz);
hdm = plot(dm,B(dm+1),'sr','LineWidth',lw,'MarkerSize',msz);
hds = plot(ds,B(ds+1),'vc','LineWidth',lw,'MarkerSize',msz);
hdl = plot(dl,B(dl+1),'^m','LineWidth',lw,'MarkerSize',msz);
hasbehavior(hl,'legend',false);
xlabel('Riesgo (%)');
if(p.Results.showTitle == true)
    title( strcat('Temp: ', sprintf('%d',temp), ', Humo: ', sprintf('%d',smoke), ', Luz: ', sprintf('%d',light), ', Humedad: ', sprintf('%d',humidity), ', Distancia: ', sprintf('%d',distance)));
end
if(p.Results.showLegend == true)
    legend(strcat('centroid: ',sprintf('%d',dc)),strcat('bisector: ',sprintf('%d',db)),strcat('mom: ',sprintf('%d',dm)),strcat('som: ',sprintf('%d',ds)),strcat('lom: ',sprintf('%d',dl)));
end
if(p.Results.exportTikz == true)
    matlab2tikz( strcat('./output/mamdani/mamdani-','T', sprintf('%d',temp),'_S', sprintf('%d',smoke),'_L', sprintf('%d',light),'_H', sprintf('%d',humidity),'_D', sprintf('%d',distance),'.tikz'),'showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
end

end