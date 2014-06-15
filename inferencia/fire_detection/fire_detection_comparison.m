clearvars;
addpath('./lang_variables');
addpath('../functions');

%Variable de entrada
t = 30;
s = 20;
l = 500;
h = 50;
d = 40;

% Dominios
x_temp     = temp.get_x();
x_smoke    = smoke.get_x();
x_light    = llight.get_x();
x_humidity = humidity.get_x();
x_distance = distance.get_x();
x_threat   = threat.get_x();

% Variable universo de salida
y.v(1,:) = x_threat;
y.v(2,:) = zeros(length(x_threat),1);

% Reglas
R = fire_detection_rules();

% Obtener índices de solapamiento
Opi     = O.pi();
Oavgmin = O.avgmin();
Omaxmin = O.maxmin();
Osqrt   = O.sqrt();
Osin    = O.sin();

% Hechos (Difusificador singleton)
fact(1) = singleton_fuzzifier(x_temp, t);
fact(2) = singleton_fuzzifier(x_smoke, s);
fact(3) = singleton_fuzzifier(x_light, l);
fact(4) = singleton_fuzzifier(x_humidity, h);
fact(5) = singleton_fuzzifier(x_distance, d);

% Operador de agregación
M = @mean;

% Índices de solapamiento
Os(1).f = Opi;     Os(1).name = 'Opi';      Os(1).latex_name = '$O_{\pi}$';
Os(2).f = Oavgmin; Os(2).name = 'Oavgmin';  Os(2).latex_name = '$O_{avgmin}$';
Os(3).f = Omaxmin; Os(3).name = 'Omaxmin';  Os(3).latex_name = '$O_{Z}$';
Os(4).f = Osqrt;   Os(4).name = 'Osqrt';    Os(4).latex_name = '$O_{\sqrt{\text{ }}}$';
Os(5).f = Osin;    Os(5).name = 'Osin';     Os(5).latex_name = '$O_{sin}$';

% T-normas
Ts(1).f = @prod; Ts(1).name = 'Producto';               Ts(1).latex_name = '$T_{prod}$';
Ts(2).f = @min;  Ts(2).name = 'Mínimo';                 Ts(2).latex_name = '$T_{min}$';
Ts(3).f = @geomean;  Ts(3).name = 'Media geométrica';   Ts(3).latex_name = '$T_{geo}$';
Ts(4).f = @harmmean;  Ts(4).name = 'Media harmónica';   Ts(4).latex_name = '$T_{harm}$';
Ts(5).f = @sinmean;  Ts(5).name = 'Sinmean';            Ts(5).latex_name = '$T_{sin}$';
Ts(6).f = @einsteinmean;  Ts(6).name = 'Einstein mean'; Ts(6).latex_name = '$T_{einstein}$';

% Open the file
fName = strcat('table-interpolation-comparison--','T',sprintf('%d',t),'_S',sprintf('%d',s),'_L',sprintf('%d',l),'_H',sprintf('%d',h),'_D',sprintf('%d',d),'.tex');%'fire_detection_interpolation_comparison.tex';
fid = fopen(fName,'w');
if fid<0
    error 'No se ha podido abrir el fichero';
end

%Print table header
fprintf(fid,'%s\r\n','\begin{longtable}{| c | c | c | c | c | c | c |}');
fprintf(fid,'%s\r\n','\hline');
fprintf(fid,'%s\r\n',' \multirow{2}{*}{\textbf{T-norma}} & \multirow{2}{*}{\textbf{Índice de solapamiento}} &  \multicolumn{5}{|c|}{\textbf{Riesgo (\%)}} \\ \cline{3-7}');
fprintf(fid,'%s\r\n','& & \textbf{cent.  (\textasteriskcentered)} & \textbf{bis. (+)} & \textbf{som ($\triangledown$)} & \textbf{mom ($\square$)} & \textbf{lom ($\vartriangle$)}  \\ \hline');
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

        % Write to file
        s = '';
        if(i==1)
            s = strcat(s,'\multirow{',sprintf('%d', length(Os)),'}{*}{',Ts(j).latex_name,'} ');
        end
        s = strcat(s,'& ',Os(i).latex_name,' & ',sprintf('%d',dc),' & ',sprintf('%d',db),' & ',sprintf('%d',ds),' & ',sprintf('%d',dm),' & ',sprintf('%d',dl),' \\ ');
        if(i==length(Os) && j<length(Ts))
            s = strcat(s, ' \hhline{|=|=|=|=|=|=|=|} ');
        elseif(i==length(Os) && j==length(Ts))
            s = strcat(s, ' \hline ');
        else
            s = strcat(s, ' \cline{2-7} ');
        end
        fprintf(fid,'%s\r\n',s);
    end
end
fprintf(fid,'%s\r\n','\end{longtable}');
fclose(fid);
