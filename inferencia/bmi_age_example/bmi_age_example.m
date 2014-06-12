clearvars;
addpath('../functions');
addpath('./lang_variables');
% Dibujar las funciones de pertenencia de las etiquetas lingüisticas Low,
% Medium y High para las variables BMI y Age.
%plot(14:42,arrayfun(@bmi_low,14:42),14:42,arrayfun(@bmi_medium,14:42),14:42,arrayfun(@bmi_high,14:42));
%plot(30:70,arrayfun(@age_low,30:70),30:70,arrayfun(@age_medium,30:70),30:70,arrayfun(@age_high,30:70));

% Crear las reglas 
% Regla 1 (R1)
R(1).n = 1;
R(1).A = {@bmi_medium, @age_low};
R(1).B = @bmi_low;

%Regla 2 (R2)
R(2).n = 2;
R(2).A = {@bmi_medium, @age_medium};
R(2).B = @bmi_low;

%Regla 3 (R3)
R(3).n = 3;
R(3).A = {@bmi_medium, @age_high};
R(3).B = @bmi_medium;

%Regla 4 (R4)
R(4).n = 4;
R(4).A = {@bmi_high, @age_medium};
R(4).B = @bmi_high;

% Construcción de índices de solapamiento
Opi       = make_overlap_index(@mean,@(x,y)(x*y));
Osqrt     = make_overlap_index(@mean,@(x,y)(sqrt(x*y)));
%Oz        = make_overlap_index(@max,@min);
Orational = make_overlap_index(@mean,@(x,y)(sqrt(x*y)/(sqrt(x*y)+1-x*y)));

%O={Opi,Osqrt,Orational};
O = Opi;
T = @prod;
M = @mean;

% Variable BMI
fact(1).v(1,:) = 14:42;
fact(1).v(2,:) = zeros(length(fact(1).v(1,:)),1);
fact(1).v(2,fact(1).v(1,:)==33) = 1;

% Variable Age
fact(2).v(1,:) = 30:70;
fact(2).v(2,:) = zeros(length(fact(2).v(1,:)),1);
fact(2).v(2,fact(2).v(1,:)==61) = 1;

% Variable universo de salida
y.v(1,:) = 14:42;
y.v(2,:) = zeros(length(fact(1).v(1,:)),1);

% Interpolar
Y = interpolation( R, fact, y, O , T, M);

Y