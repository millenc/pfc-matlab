% Difusificador singleton.
% Parámetros:
% x: universo de referencia.
% value: valor escalar de entrada
% 
% Valor devuelto:
% f: conjunto difuso donde el valor "value" tiene grado de pertenencia 1 y
% el resto de valores 0.

function f = singleton_fuzzifier(x, value)
f.v(1,:) = x;
f.v(2,:) = zeros(length(f.v(1,:)),1);
f.v(2,f.v(1,:)==value) = 1;
end