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

function Bp = hashed_interpolation( R, fact, y, O , T, M )

% Inicializar la tabla hash de conjuntos
hash = fuzzyset_hash();

n = length(R);
k=zeros(1,n);
K=zeros(n,length(y));
B=K;

for i=1:n
   % Calcular el grado de activación de cada regla.
   k(i) = hashed_matching_degree(hash, R(i), fact, O, T);
   K(i,:) = k(i);
   
   % Calcular el conjunto de salida B para esta regla. Utilizar la función
   % de hash para evitar cálculos innecesarios.
   B(i,:) = hash(R(i).B, y);
end

% Calcular el conjunto de salida agregando los conjuntos obtenidos en cada
% regla.
Bp = cellfun(M,num2cell(min(K,B),1));

end