function Class = classify_fact( R, x, O , T, M, P )
%CLASSIFY_FACT Summary of this function goes here
%   Detailed explanation goes here

% Clases utilizadas en las reglas
Cm =  sort(unique([R(:).C]));

% Número de índices de solapamiento utilizados
S = length(O);
KC = zeros(length(Cm),1);

for C=Cm(1:end)
    % Seleccionar las reglas que clasifican la clase actual
    rules = R([R.C] == C);
    alpha = length(rules);
    if(alpha>0)
        r = length(rules(1).CF);
    else
        r = 0;
    end
    
    K = zeros(r*S,1);
    ki = 1;
    for t=1:r
        for L=1:S
            k = zeros(alpha,1);
            for j=1:alpha
                k(j) = matching_degree(rules(j), x, O{L}, T) * rules(j).CF(t);
            end
            K(ki) = max(k);
            ki=ki+1;
        end
    end
    KcnfrOs(C,:) = K; 
    % KC(C) = M(K);
end

% Algoritmo 5: Seleccionamos la clase cuyo valor sea mayor
% [max_KC, Class] = max(KC);

%Algoritmo 6: Seleccionamos la clase haciendo uso de funciones penalty
Class = class_consensus(KcnfrOs,M,P);

end

function m = matching_degree(R, fact, O, T)

overlaps = zeros(length(R.A),1);

for i=1:length(R.A)
    overlaps(i) = O(fact(i).v(2,:) , arrayfun(R.A{i},fact(i).v(1,:)) );
end
m = T(overlaps);

end

