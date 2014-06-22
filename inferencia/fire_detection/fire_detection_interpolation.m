% Método de interpolación basado en índices de solapamiento aplicado a la determinación de riesgos de incendios.
% Parámetros:
% O: Índice de solapamiento.
% T: T-norma.
% M: Función de agregación.
% t: Temperatura (ºC).
% s: Humo (ppm).
% l: Luz (lux).
% h: Humedad (ppm).
% d: Distancia (m).
%
% Valores devueltos:
% B: Conjunto de salida.
% dc: Valor defusificado centroide.
% db: Valor defusificado bisector.
% dm: Valor defusificado media de máximos.
% ds: Valor defusificado menor de máximos.
% dl: Valor defusificado mayor de máximos.

function  [B, dc, db, dm, ds, dl] = fire_detection_interpolation(O, T, M, t, s, l, h, d)
addpath('./lang_variables');
addpath('../functions');
addpath('../matlab2tikz');

% Universos de referencia
x_temp     = temp.get_x();
x_smoke    = smoke.get_x();
x_light    = llight.get_x();
x_humidity = humidity.get_x();
x_distance = distance.get_x();
x_threat   = threat.get_x();

% Reglas
R = fire_detection_rules();

% Premisa (difusificar entradas escalares)
fact(1) = singleton_fuzzifier(x_temp, t);
fact(2) = singleton_fuzzifier(x_smoke, s);
fact(3) = singleton_fuzzifier(x_light, l);
fact(4) = singleton_fuzzifier(x_humidity, h);
fact(5) = singleton_fuzzifier(x_distance, d);

% Aplicar el método de interpolación
B = hashed_interpolation( R, fact, x_threat, O , T, M);

% Defusificar
dc = round(defuzz(x_threat, B, 'centroid'));
db = round(defuzz(x_threat, B, 'bisector'));
dm = round(defuzz(x_threat, B, 'mom'));
ds = round(defuzz(x_threat, B, 'som'));
dl = round(defuzz(x_threat, B, 'lom'));

end