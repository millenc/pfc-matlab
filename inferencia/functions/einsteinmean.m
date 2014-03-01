function e = einsteinmean( values )

e = prod(values)/(1+prod(arrayfun(@(x)(1-x),values)));

end

