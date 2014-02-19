function u = age_high( age )
%age_LOW Summary of this function goes here
%   Detailed explanation goes here

if age >= 50 && age <=70
    u = (age - 50)/(70 - 50);
else
    u = 0;
end

end

