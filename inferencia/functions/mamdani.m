function B = mamdani( R, fact, y)

n = length(R);
B = zeros(length(R), length(y));

% Evaluar cada regla
for i=1:n
  %Evaluar cada antecedente
  u = zeros(1,length(R(i).A));
  for j=1:length(R(i).A)
      u(j) = R(i).A{j}(fact(j));
  end
  
  %Obtener el valor del fuzzy set de salida para esta regla "clippeando" el consecuente con
  %el mínimo de los grados de pertenencia de cada antecedente.
  B(i,:) = min(arrayfun(R(i).B, y),min(u)); 
end

%Agregar todos los consecuentes obtenidos utilizando el máximo
B = max(B,[],1);
end

