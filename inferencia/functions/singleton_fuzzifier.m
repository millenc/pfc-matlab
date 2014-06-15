function f = singleton_fuzzifier(x, value)
f.v(1,:) = x;
f.v(2,:) = zeros(length(f.v(1,:)),1);
f.v(2,f.v(1,:)==value) = 1;
end

