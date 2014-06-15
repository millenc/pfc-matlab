clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

x_temp     = temp.get_x();
x_smoke    = smoke.get_x();
x_light    = llight.get_x();
x_humidity = humidity.get_x();
x_distance = distance.get_x();
x_threat   = threat.get_x();

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
plot(x,arrayfun(@llight.low,x),x,arrayfun(@llight.medium,x),x,arrayfun(@llight.high,x));
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

R = fire_detection_rules();

%Funciones utilizadas en la interpolación
O = O.pi();
T = @prod;
M = @mean;

% Hechos
fact(1) = singleton_fuzzifier(x_temp, 30);
fact(2) = singleton_fuzzifier(x_smoke, 20);
fact(3) = singleton_fuzzifier(x_light, 500);
fact(4) = singleton_fuzzifier(x_humidity, 50);
fact(5) = singleton_fuzzifier(x_distance, 40);

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
plot(x_threat,Y,'-',dc,Y(dc+1),'*',db,Y(db+1),'+',dm,Y(dm+1),'.',ds,Y(ds+1),'^',dl,Y(dl+1),'v');
legend('Threat',strcat('centroid:',sprintf('%d',dc)),strcat('bisector:',sprintf('%d',db)),strcat('mom:',sprintf('%d',dm)),strcat('som:',sprintf('%d',ds)),strcat('lom:',sprintf('%d',dl)));
title('Threat');