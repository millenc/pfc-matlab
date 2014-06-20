function m = hashed_matching_degree(hash, R, fact, O, T)

overlaps = zeros(length(R.A),1);
for i=1:length(R.A)
    overlaps(i) = O(fact(i).v(2,:) , hash(R.A{i},fact(i).v(1,:)) );
end
m = T(overlaps);

end

