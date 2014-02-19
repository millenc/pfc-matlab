function u = bmi_medium( bmi )
%BMI_LOW Summary of this function goes here
%   Detailed explanation goes here

if bmi >= 14 && bmi <=28
    u = (bmi - 14)/(28 - 14);
elseif bmi >= 28 && bmi <=42
    u = 1 - (bmi - 28)/(42 - 28);
else
    u = 0;
end

end

