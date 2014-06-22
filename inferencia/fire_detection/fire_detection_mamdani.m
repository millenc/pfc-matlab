% Método de Mamdani aplicado a la determinación de riesgos de incendios.
% Parámetros:
% temp: Temperatura (ºC).
% smoke: Humo (ppm).
% light: Luz (lux).
% humidity: Humedad (ppm).
% distance: Distancia (m).
%
% Valores devueltos:
% B: Conjunto de salida.
% dc: Valor defusificado centroide.
% db: Valor defusificado bisector.
% dm: Valor defusificado media de máximos.
% ds: Valor defusificado menor de máximos.
% dl: Valor defusificado mayor de máximos.

function [B, dc, db, dm, ds, dl] = fire_detection_mamdani(temp, smoke, light, humidity, distance)
    % Añadir dependencias al path
    addpath('./lang_variables');
    addpath('../functions');

    % Universo de salida
    x_threat = threat.get_x();

    % Reglas
    R = fire_detection_rules();

    % Premisa
    fact = [temp,smoke,light,humidity,distance];

    % Aplicar método de Mamdani
    B = mamdani(R, fact, x_threat);

    % Defusificar
    dc = round(defuzz(x_threat, B, 'centroid'));
    db = round(defuzz(x_threat, B, 'bisector'));
    dm = round(defuzz(x_threat, B, 'mom'));
    ds = round(defuzz(x_threat, B, 'som'));
    dl = round(defuzz(x_threat, B, 'lom'));
end

