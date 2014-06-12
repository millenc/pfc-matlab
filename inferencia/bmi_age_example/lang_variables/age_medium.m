function u = age_medium( age )
%age_LOW Summary of this function goes here
%   Detailed explanation goes here

if age >= 30 && age <=50
    u = (age - 30)/(50 - 30);
elseif age >= 50 && age <=70
    u = 1 - (age - 50)/(70 - 50);
else
    u = 0;
end

end

