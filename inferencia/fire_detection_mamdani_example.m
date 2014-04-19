clearvars;
addpath('./fire_detection_lang_variables');

rules = fire_detection_rules();
[m,n] = size(rules);
%Inicializar el conjunto de reglas
for i=1:m
    R(i).n = i;
    R(i).A = rules(i,1:n-1);
    R(i).B = rules{i,n};
end
fact = [30,20,500,50,40];
y.v(1,:) = 0:100;

B = mamdani(R, fact, y);

figure;
plot(y.v(1,:),B);

