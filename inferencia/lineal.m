function u = lineal(first, last, value, r)
    if value >= first && value <= last
        u = (value - first)/(last - first);
        if(nargin == 4 && r == 'r')
            u = 1 - u;
        end
    else
        u = 0;
    end
end

