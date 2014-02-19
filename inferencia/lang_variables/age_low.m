function u = age_low( age )
%age_LOW Summary of this function goes here
%   Detailed explanation goes here

if age >= 30 && age <= 50
    u = 1 - (age - 30)/(50 - 30);
else
    u = 0;
end

end

