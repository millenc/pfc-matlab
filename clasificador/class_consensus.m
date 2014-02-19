function C = class_consensus( KcnfrOs, M, P )
%CLASS_CONSENSUS Summary of this function goes here
%   Detailed explanation goes here

% Calcular las permutaciones de las funciones de agregación en M
permutations = perms(M);

for p=1:size(permutations,1)
    permutation = permutations(p,:);

    for i=1:length(permutation)
        m(p,i) = permutation{i}(KcnfrOs(i,:));
    end

    % Calcular el valor de la función penalty para esta permutación
    Pv(p) = P(KcnfrOs, m(p,:));
end

% Obtener la permutación que minimiza la función penalty P
[minPv, p] = min(Pv);

% Tomar como clase aquella cuyo valor sea máximo
[maxKC, C] = max(m(p,:));

end

function p = Penalty(C,m)

p = 0;
for i=1:size(C,1)
    Csum = 0;
    for j=1:size(C,2)
        Csum = Csum + abs(C(i,j)-m(i)); 
    end
    p = p + Csum^2; 
end

end


