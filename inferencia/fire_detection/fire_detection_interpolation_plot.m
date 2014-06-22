function [B, dc, db, dm, ds, dl] = fire_detection_interpolation_plot( O, T, M, t, s, l, h, d )
addpath('../matlab2tikz');

% Obtener los resultados con el m�todo de interpolaci�n
[B, dc, db, dm, ds, dl] = fire_detection_interpolation(O.f, T, M, t, s, l, h, d);

% Pintar gr�fico
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
%title(strcat('Temp: ',sprintf('%d',t),', Humo: ',sprintf('%d',s),', Luz: ',sprintf('%d',l),', Humedad: ',sprintf('%d',h),', Distancia: ',sprintf('%d',d)));
%legend(strcat('centroid: ',sprintf('%d',dc)),strcat('bisector: ',sprintf('%d',db)),strcat('mom: ',sprintf('%d',dm)),strcat('som: ',sprintf('%d',ds)),strcat('lom: ',sprintf('%d',dl)));
matlab2tikz(strcat('./output/interpolation/interpolation-','O-',O.name,'_T',func2str(T),'_M',func2str(M),'--','T',sprintf('%d',t),'_S',sprintf('%d',s),'_L',sprintf('%d',l),'_H',sprintf('%d',h),'_D',sprintf('%d',d),'.tikz'),'showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
end

