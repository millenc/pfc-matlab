function u = bmi_low( bmi )
%BMI_LOW Summary of this function goes here
%   Detailed explanation goes here

if bmi >= 14 && bmi <=28
    u = 1 - (bmi - 14)/(28 - 14);
else
    u = 0;
end

end

