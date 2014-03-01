function s = sinmean( values )

if ~isempty(values)
    s = sin(((pi/2)*prod(values))^(1/4))/length(values);
else
    s = 0;
end

end

