clearvars;
addpath('./lang_variables');
addpath('../functions');

% Dominios
x_temp     = temp.get_x();
x_smoke    = smoke.get_x();
x_light    = light.get_x();
x_humidity = humidity.get_x();
x_distance = distance.get_x();
x_threat   = threat.get_x();

% Variable universo de salida
y.v(1,:) = x_threat;
y.v(2,:) = zeros(length(x_threat),1);

% Reglas
R = fire_detection_rules();

% Construcción de índices de solapamiento
Opi     = make_overlap_index(@mean,@(x,y)(x*y));
Oavgmin = make_overlap_index(@mean,@min);
Omaxmin = make_overlap_index(@max,@min);
Osqrt   = make_overlap_index(@mean,@(x,y)(sqrt(x*y)));
Osin    = make_overlap_index(@mean,@(x,y)(sin((pi/2)*(x*y)^(1/4))));

% Hechos (Difusificador singleton)
fact(1) = singleton_fuzzifier(x_temp, 30);
fact(2) = singleton_fuzzifier(x_smoke, 20);
fact(3) = singleton_fuzzifier(x_light, 500);
fact(4) = singleton_fuzzifier(x_humidity, 50);
fact(5) = singleton_fuzzifier(x_distance, 40);

% Operador de agregación
M = @mean;

% Índices de solapamiento
Os(1).f = Opi;     Os(1).name = 'Opi';
Os(2).f = Oavgmin; Os(2).name = 'Oavgmin';
Os(3).f = Omaxmin; Os(3).name = 'Omaxmin';
Os(4).f = Osqrt;   Os(4).name = 'Osqrt';
Os(5).f = Osin;    Os(5).name = 'Osin';

% T-normas
Ts(1).f = @prod; Ts(1).name = 'Producto';
Ts(2).f = @min;  Ts(2).name = 'Mínimo';
Ts(3).f = @geomean;  Ts(3).name = 'Media geométrica';
Ts(4).f = @harmmean;  Ts(4).name = 'Media harmónica';
Ts(5).f = @sinmean;  Ts(5).name = 'Sinmean';
Ts(6).f = @einsteinmean;  Ts(6).name = 'Einstein mean';

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
        plot(x_threat,Y,'-',dc,Y(dc+1),'*',db,Y(db+1),'+',dm,Y(dm+1),'.',ds,Y(ds+1),'^',dl,Y(dl+1),'v');
        legend('Threat',strcat('centroid:',sprintf('%d',dc)),strcat('bisector:',sprintf('%d',db)),strcat('mom:',sprintf('%d',dm)),strcat('som:',sprintf('%d',ds)),strcat('lom:',sprintf('%d',dl)));
        title(Os(i).name);
    end
end

