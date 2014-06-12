clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

x_threat = 0:100;

rules = fire_detection_rules();
[m,n] = size(rules);
%Inicializar el conjunto de reglas
for i=1:m
    R(i).n = i;
    R(i).A = rules(i,1:n-1);
    R(i).B = rules{i,n};
end
fact = [30,30,1000,50,40];
y.v(1,:) = x_threat;

B = mamdani(R, fact, y);

figure;
plot(y.v(1,:),B);

dc = round(defuzz(x_threat, B, 'centroid'))
