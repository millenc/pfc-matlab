function u = bmi_high( bmi )
%BMI_LOW Summary of this function goes here
%   Detailed explanation goes here

if bmi >= 28 && bmi <=42
    u = (bmi - 28)/(42 - 28);
else
    u = 0;
end

end

