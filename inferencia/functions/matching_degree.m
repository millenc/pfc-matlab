% Cálculo del grado de activación de una regla utilizando índices de
% solapamiento.
% Parámetros:
% R: Regla (estructura).
% fact: Premisa.
% O: Índice de solapamiento utilizado.
% T: T-norma utilizada.
%
% Devuelve:
% m = grado de activación

function m = matching_degree(R, fact, O, T)

overlaps = zeros(length(R.A),1);
for i=1:length(R.A)
    overlaps(i) = O(fact(i).v(2,:) , arrayfun(R.A{i},fact(i).v(1,:)) );
end
m = T(overlaps);

end