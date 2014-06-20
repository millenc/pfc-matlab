function Bp = interpolation( R, fact, y, O , T, M )

n = length(R);
k=zeros(1,n);
K=zeros(n,length(y));
B=K;

for i=1:n
   k(i) = matching_degree(R(i), fact, O, T);
   K(i,:) = k(i);
   
   %Calcular B para esta regla 
   B(i,:) = arrayfun(R(i).B, y);
end
Bp = cellfun(M,num2cell(min(K,B),1));

end

