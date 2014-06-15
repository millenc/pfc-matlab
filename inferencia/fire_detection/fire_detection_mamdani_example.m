clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

x_threat = threat.get_x();

R = fire_detection_rules();
fact = [30,30,1000,50,40];
y.v(1,:) = x_threat;

B = mamdani(R, fact, y);

figure;
plot(y.v(1,:),B);

dc = round(defuzz(x_threat, B, 'centroid'))

