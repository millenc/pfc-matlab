clearvars;
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

x_threat = threat.get_x();

R = fire_detection_rules();
fact = [30,30,1000,50,40];
y.v(1,:) = x_threat;

B = mamdani(R, fact, y);

dc = round(defuzz(x_threat, B, 'centroid'));
db = round(defuzz(x_threat, B, 'bisector'));
dm = round(defuzz(x_threat, B, 'mom'));
ds = round(defuzz(x_threat, B, 'som'));
dl = round(defuzz(x_threat, B, 'lom'));
figure;
plot(y.v(1,:),B,'-',dc,B(dc+1),'*',db,B(db+1),'+',dm,B(dm+1),'.',ds,B(ds+1),'^',dl,B(dl+1),'v');
legend('Threat',strcat('centroid:',sprintf('%d',dc)),strcat('bisector:',sprintf('%d',db)),strcat('mom:',sprintf('%d',dm)),strcat('som:',sprintf('%d',ds)),strcat('lom:',sprintf('%d',dl)));

