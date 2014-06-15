clearvars;
addpath('../matlab2tikz');
addpath('./lang_variables');
addpath('../functions');

% Universo de referencia
x=0:1:100;

% Rangos en los que x tiene valor
x_low = 0:1:40;
x_medium = 10:1:90;
x_high = 60:1:100;


% Parámetros para mejorar la visualización de datos
width = 3;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

pos = get(gcf, 'Position');
%set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
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