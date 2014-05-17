clearvars;
addpath('./fire_detection_lang_variables');
addpath('./functions');

x_temp     = 0:120;
x_smoke    = 0:100;
x_light    = 0:1000;
x_humidity = 0:100;
x_distance = 0:80;
x_threat   = 0:100;

x = x_temp;
subplot(3,2,1)
plot(x,arrayfun(@temp.low,x),x,arrayfun(@temp.medium,x),x,arrayfun(@temp.high,x));
title('Temperature (ºC)')
legend('Low','Medium','High');

x = x_smoke;
subplot(3,2,2)
plot(x,arrayfun(@smoke.low,x),x,arrayfun(@smoke.medium,x),x,arrayfun(@smoke.high,x));
title('Smoke (ppm)')
legend('Low','Medium','High');

x = x_light;
subplot(3,2,3)
plot(x,arrayfun(@light.low,x),x,arrayfun(@light.medium,x),x,arrayfun(@light.high,x));
title('Light (lux)')
legend('Low','Medium','High');

x = x_humidity;
subplot(3,2,4)
plot(x,arrayfun(@humidity.low,x),x,arrayfun(@humidity.medium,x),x,arrayfun(@humidity.high,x));
title('Humidity (ppm)')
legend('Low','Medium','High');

x = x_distance;
subplot(3,2,5)
plot(x,arrayfun(@distance.close,x),x,arrayfun(@distance.medium,x),x,arrayfun(@distance.far,x));
title('Distance (m)')
legend('Close','Medium','Far');

x = x_threat;
subplot(3,2,6)
plot(x,arrayfun(@threat.very_low,x),x,arrayfun(@threat.low,x),x,arrayfun(@threat.medium,x),x,arrayfun(@threat.high,x),x,arrayfun(@threat.very_high,x));
title('Threat of fire (%)')
legend('Very Low','Low','Medium','High','Very High');

rules = fire_detection_rules();

[m,n] = size(rules);
%Inicializar el conjunto de reglas
for i=1:m
    R(i).n = i;
    R(i).A = rules(i,1:n-1);
    R(i).B = rules{i,n};
end

% Construcción de índices de solapamiento
Opi     = make_overlap_index(@mean,@(x,y)(x*y));
Oavgmin = make_overlap_index(@mean,@min);
Omaxmin = make_overlap_index(@max,@min);
Osqrt   = make_overlap_index(@mean,@(x,y)(sqrt(x*y)));
Osin    = make_overlap_index(@mean,@(x,y)(sin((pi/2)*(x*y)^(1/4))));

%Funciones utilizadas en la interpolación
O = Opi;
T = @prod;
M = @mean;

% Hechos
fact(1) = fact_value(x_temp, 30);
fact(2) = fact_value(x_smoke, 20);
fact(3) = fact_value(x_light, 500);
fact(4) = fact_value(x_humidity, 50);
fact(5) = fact_value(x_distance, 40);

% Variable universo de salida
y.v(1,:) = x_threat;
y.v(2,:) = zeros(length(x_threat),1);

Y = interpolation( R, fact, y, O , T, M);

dc = round(defuzz(x_threat, Y, 'centroid'));
db = round(defuzz(x_threat, Y, 'bisector'));
dm = round(defuzz(x_threat, Y, 'mom'));
ds = round(defuzz(x_threat, Y, 'som'));
dl = round(defuzz(x_threat, Y, 'lom'));

figure;
plot(x_threat,Y,'-',dc,Y(dc),'*',db,Y(db),'+',dm,Y(dm),'.',ds,Y(ds),'^',dl,Y(dl),'v');
%text(dc,Y(dc),sprintf('%d',dc));
legend('Threat',strcat('centroid:',sprintf('%d',dc)),strcat('bisector:',sprintf('%d',db)),strcat('mom:',sprintf('%d',dm)),strcat('som:',sprintf('%d',ds)),strcat('lom:',sprintf('%d',dl)));
title('Threat');

% Utilizar varios índices de solapamiento y T-normas
Os(1).f = Opi;     Os(1).name = 'Opi';
Os(2).f = Oavgmin; Os(2).name = 'Oavgmin';
Os(3).f = Omaxmin; Os(3).name = 'Omaxmin';
Os(4).f = Osqrt;   Os(4).name = 'Osqrt';
Os(5).f = Osin;    Os(5).name = 'Osin';

Ts(1).f = @prod; Ts(1).name = 'Producto';
Ts(2).f = @min;  Ts(2).name = 'Mínimo';
Ts(3).f = @geomean;  Ts(3).name = 'Media geométrica';
Ts(4).f = @harmmean;  Ts(4).name = 'Media harmónica';
Ts(5).f = @sinmean;  Ts(5).name = 'Sinmean';
Ts(6).f = @einsteinmean;  Ts(6).name = 'Einstein mean';

%Ts(3).f = @lukasiewicz; Ts(3).name = 'Lukasiewicz';

for j=1:length(Ts)
    figure('name',strcat('T-norma: ', Ts(j).name));
    for i=1:length(Os)
        Y = interpolation( R, fact, y, Os(i).f , Ts(j).f, M);
        
        % Defuzzification
        dc = round(defuzz(x_threat, Y, 'centroid'));
        db = round(defuzz(x_threat, Y, 'bisector'));
        dm = round(defuzz(x_threat, Y, 'mom'));
        ds = round(defuzz(x_threat, Y, 'som'));
        dl = round(defuzz(x_threat, Y, 'lom'));
        
        subplot(3,2,i);
        plot(x_threat,Y,'-',dc,Y(dc),'*',db,Y(db),'+',dm,Y(dm),'.',ds,Y(ds),'^',dl,Y(dl),'v');
        legend('Threat',strcat('centroid:',sprintf('%d',dc)),strcat('bisector:',sprintf('%d',db)),strcat('mom:',sprintf('%d',dm)),strcat('som:',sprintf('%d',ds)),strcat('lom:',sprintf('%d',dl)));
        title(Os(i).name);
    end
end


