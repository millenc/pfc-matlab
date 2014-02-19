% Dibujar las funciones de pertenencia de las etiquetas lingüisticas Low,
% Medium y High para las variables BMI y Age.
%plot(14:42,arrayfun(@bmi_low,14:42),14:42,arrayfun(@bmi_medium,14:42),14:42,arrayfun(@bmi_high,14:42));
%plot(30:70,arrayfun(@age_low,30:70),30:70,arrayfun(@age_medium,30:70),30:70,arrayfun(@age_high,30:70));

% Crear las reglas 
% Regla 1 (R1)
R(1).n = 1;
R(1).A = {@bmi_medium, @age_low};
R(1).C = 1;
R(1).CF = 0;

%Regla 2 (R2)
R(2).n = 2;
R(2).A = {@bmi_medium, @age_medium};
R(2).C = 2;
R(2).CF = 0;

%Regla 3 (R3)
R(3).n = 3;
R(3).A = {@bmi_medium, @age_high};
R(3).C = 2;
R(3).CF = 0;

%Regla 4 (R4)
R(4).n = 4;
R(4).A = {@bmi_high, @age_medium};
R(4).C = 3;
R(4).CF = 0;

%Regla 5 (R5)
R(5).n = 5;
R(5).A = {@bmi_high, @age_high};
R(5).C = 3;
R(5).CF = 0;

% Datos (ejemplos x)
x = [
        28,32,1;
        34,32,1;
        33,35,1;
        29,37,1;
        34,38,2;
        30,47,2;
        33,48,2;
        31,52,2;
        29,55,3;
        34,55,3;
        30,63,2;
        33,62,3;
        29,64,2;
        32,62,3;
        30,68,2;
        36,48,2;
        39,49,3;
        36,50,2;
        37,55,3;
        41,57,3;
        38,63,2;
        37,65,3;
        41,64,3;
        39,68,3;
        36,69,3;
    ];

% Construcción de índices de solapamiento
Opi       = make_overlap_index(@mean,@(x,y)(x*y));
Osqrt     = make_overlap_index(@mean,@(x,y)(sqrt(x*y)));
%Oz        = make_overlap_index(@max,@min);
Orational = make_overlap_index(@mean,@(x,y)(sqrt(x*y)/(sqrt(x*y)+1-x*y)));

O={Opi,Osqrt,Orational};
T = @prod;

R = calculate_confidence_degrees(R,x,T,O);

% (Ejemplo) Valores para clasificar : BMI = 33 , Age = 61

% Construimos el ejemplo
% x(1).v(2,(x(1).v(1,:)==16)

% Variable BMI
fact(1).v(1,:) = 14:42;
fact(1).v(2,:) = zeros(length(fact(1).v(1,:)),1);
fact(1).v(2,fact(1).v(1,:)==33) = 1;

% Variable Age
fact(2).v(1,:) = 30:70;
fact(2).v(2,:) = zeros(length(fact(2).v(1,:)),1);
fact(2).v(2,fact(2).v(1,:)==61) = 1;

% C = classify_fact( R, fact, {Opi} , T, @max )
% C = classify_fact( R, fact, {Osqrt} , T, @max )
% C = classify_fact( R, fact, {Orational} , T, @max )

% Todos los índices de solapamiento
C = classify_fact( R, fact, O , T, {@max,@mean,@median}, @penalty );
stop

%variables = zeros(BMI,Age);
i = 1;
for BMI=14:42
    fact(1).v(2,:) = zeros(length(fact(1).v(1,:)),1);
    fact(1).v(2,fact(1).v(1,:)==BMI) = 1;
    
    for Age=30:70
        fact(2).v(2,:) = zeros(length(fact(2).v(1,:)),1);
        fact(2).v(2,fact(2).v(1,:)==Age) = 1;
        
        classes(i,1) = BMI;
        classes(i,2) = Age;
        classes(i,3) = classify_fact( R, fact, O , T, {@max,@mean,@median}, @penalty );
        
        i=i+1;
    end
end

gscatter(classes(:,1),classes(:,2),classes(:,3),'brg','xos');

