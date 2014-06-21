% Método de interpolación basado en reglas.
% Parámetros:
% R: Conjunto de reglas.
% fact: Premisa. Vector de conjuntos difusos que componen la premisa. El valor para el
% antecedente i-ésimo debe estar en la posición fact(i).
% y: Universo de salida
% O: Índice de solapamiento utilizado.
% T: T-norma utilizada.
% M: Operador de agregación utilizado.
%
% Devuelve:
% Bp = Conjunto de salida.

function Bp = interpolation( R, fact, y, O , T, M )

n = length(R);
k=zeros(1,n);
K=zeros(n,length(y));
B=K;

for i=1:n
   % Calcular el grado de activación de cada regla
   k(i) = matching_degree(R(i), fact, O, T);
   K(i,:) = k(i);
   
   % Calcular el conjunto de salida B para esta regla
   B(i,:) = arrayfun(R(i).B, y);
end

% Calcular el conjunto de salida agregando los conjuntos obtenidos en cada
% regla.
Bp = cellfun(M,num2cell(min(K,B),1));

end