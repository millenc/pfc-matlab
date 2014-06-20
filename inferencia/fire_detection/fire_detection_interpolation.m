function  B = fire_detection_interpolation(O, T, M, t, s, l, h, d)
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

% Dominios
x_temp     = temp.get_x();
x_smoke    = smoke.get_x();
x_light    = llight.get_x();
x_humidity = humidity.get_x();
x_distance = distance.get_x();
x_threat   = threat.get_x();

% Reglas
R = fire_detection_rules();

% Premisa
fact(1) = singleton_fuzzifier(x_temp, t);
fact(2) = singleton_fuzzifier(x_smoke, s);
fact(3) = singleton_fuzzifier(x_light, l);
fact(4) = singleton_fuzzifier(x_humidity, h);
fact(5) = singleton_fuzzifier(x_distance, d);

B = hashed_interpolation( R, fact, x_threat, O.f , T, M);

%Defusificar
dc = round(defuzz(x_threat, B, 'centroid'));
db = round(defuzz(x_threat, B, 'bisector'));
dm = round(defuzz(x_threat, B, 'mom'));
ds = round(defuzz(x_threat, B, 'som'));
dl = round(defuzz(x_threat, B, 'lom'));


% Pintar gráfico
alw = 0.75;    % AxesLineWidth
fsz = 9;      % Fontsize
lw = 1.2;      % LineWidth
msz = 9;       % MarkerSize

figure;
set(gca, 'FontSize', fsz, 'LineWidth', alw);
hold on;
hl = plot(x_threat,B,'-k','LineWidth',lw,'MarkerSize',msz);
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

