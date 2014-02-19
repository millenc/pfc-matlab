function R = calculate_confidence_degrees( R, x, T, O )
%CALCULATE_CONFIDENCE_DEGREES Summary of this function goes here
%   Detailed explanation goes here

% Número de reglas
p = length(R);

% Número de patrones
m = size(x,1);

% Ordenar las reglas por la clase que clasifican
x = sortrows(x,size(x,2));

% Conjunto U
U = ones(m,1);

% Si se pasa un único índice de solapamiento lo convertimos en un cell
% array con ese único elemento
if isa(O, 'function_handle')
       O = {O};
end

for q=1:p
   % Obtener los índices de los patrones que clasifican la clase asociada a la regla Rq
   idx = find(x(:,size(x,2)) == R(q).C);
   
   % Calcular el grado de emparejamiento (matching degree) de todos los
   % patrones con la regla actual
   c = zeros(m,1);
   for j=1:m
        c(j) = T(apply_function_array (R(q).A, x(j,:)));
   end

   % Calcular el grado de certeza de la regla utilizando los diferentes
   % índices de solapamiento
   Cqs = padarray(c(idx(1:end)),m-length(idx),0,'post');
   Cqm = c;
   for i=1:length(O)
        R(q).CF(i) = O{i}(Cqs,U)/O{i}(Cqm,U);
   end
   
end

end

function A = apply_function_array (F, X)

A = zeros(length(F),1);

for i=1:length(F)
    A(i) = F{i}(X(i));
end

end