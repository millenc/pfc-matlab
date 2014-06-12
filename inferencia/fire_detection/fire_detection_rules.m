function rules = fire_detection_rules()
rules = {
         %temp.low y smoke.low
         @temp.low,@smoke.low,@light.low,@humidity.high,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@light.low,@humidity.high,@distance.medium,@threat.very_low;
         @temp.low,@smoke.low,@light.low,@humidity.high,@distance.close,@threat.very_low;
         
         @temp.low,@smoke.low,@light.low,@humidity.medium,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@light.low,@humidity.medium,@distance.medium,@threat.very_low;
         @temp.low,@smoke.low,@light.low,@humidity.medium,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@light.low,@humidity.low,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@light.low,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@light.low,@humidity.low,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@light.medium,@humidity.high,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@light.medium,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@light.medium,@humidity.high,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@light.medium,@humidity.medium,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@light.medium,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@light.medium,@humidity.medium,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@light.medium,@humidity.low,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@light.medium,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@light.medium,@humidity.low,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@light.high,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.low,@light.high,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@light.high,@humidity.high,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@light.high,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.low,@light.high,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@light.high,@humidity.medium,@distance.close,@threat.medium;
         
         @temp.low,@smoke.low,@light.high,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.low,@light.high,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.low,@light.high,@humidity.low,@distance.close,@threat.medium;
         
         %temp.low y smoke.medium
         @temp.low,@smoke.medium,@light.low,@humidity.high,@distance.far,@threat.very_low;
         @temp.low,@smoke.medium,@light.low,@humidity.high,@distance.medium,@threat.very_low;
         @temp.low,@smoke.medium,@light.low,@humidity.high,@distance.close,@threat.low;

         @temp.low,@smoke.medium,@light.low,@humidity.medium,@distance.far,@threat.very_low;
         @temp.low,@smoke.medium,@light.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@light.low,@humidity.medium,@distance.close,@threat.low;

         @temp.low,@smoke.medium,@light.low,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.low,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@light.low,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@light.medium,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.medium,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@light.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@light.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.medium,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@light.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@light.medium,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.medium,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@light.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@light.high,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.low,@smoke.medium,@light.high,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@light.high,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.low,@smoke.medium,@light.high,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@light.high,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@light.high,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.medium,@light.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.low y smoke.high
         @temp.low,@smoke.high,@light.low,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.high,@light.low,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.high,@light.low,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.low,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.high,@light.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.high,@light.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.low,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.high,@light.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@light.low,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.medium,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.high,@light.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@light.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.high,@light.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@light.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.medium,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.high,@light.medium,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@light.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.high,@humidity.high,@distance.far,@threat.medium;
         @temp.low,@smoke.high,@light.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@light.high,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@light.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.low,@smoke.high,@light.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@light.high,@humidity.medium,@distance.close,@threat.high;

         @temp.low,@smoke.high,@light.high,@humidity.low,@distance.far,@threat.medium;
         @temp.low,@smoke.high,@light.high,@humidity.low,@distance.medium,@threat.high;
         @temp.low,@smoke.high,@light.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.medium y smoke.low
         @temp.medium,@smoke.low,@light.low,@humidity.high,@distance.far,@threat.very_low;
         @temp.medium,@smoke.low,@light.low,@humidity.high,@distance.medium,@threat.very_low;
         @temp.medium,@smoke.low,@light.low,@humidity.high,@distance.close,@threat.low;

         @temp.medium,@smoke.low,@light.low,@humidity.medium,@distance.far,@threat.very_low;
         @temp.medium,@smoke.low,@light.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@light.low,@humidity.medium,@distance.close,@threat.low;

         @temp.medium,@smoke.low,@light.low,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.low,@humidity.low,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@light.low,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@light.medium,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.medium,@humidity.high,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@light.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@light.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.medium,@humidity.medium,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@light.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@light.medium,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.medium,@humidity.low,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@light.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@light.high,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.low,@light.high,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@light.high,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.low,@light.high,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@light.high,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@light.high,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.low,@light.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.medium y smoke.medium
         @temp.medium,@smoke.medium,@light.low,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@light.low,@humidity.high,@distance.medium,@threat.low;
         @temp.medium,@smoke.medium,@light.low,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@light.low,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@light.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.medium,@smoke.medium,@light.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@light.low,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@light.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@light.low,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@light.medium,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@light.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@light.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@light.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@light.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@light.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@light.medium,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@light.medium,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@light.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@light.high,@humidity.high,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@light.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@light.high,@humidity.high,@distance.close,@threat.high;

         @temp.medium,@smoke.medium,@light.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@light.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@light.high,@humidity.medium,@distance.close,@threat.high;

         @temp.medium,@smoke.medium,@light.high,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@light.high,@humidity.low,@distance.medium,@threat.high;
         @temp.medium,@smoke.medium,@light.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.medium y smoke.high
         @temp.medium,@smoke.high,@light.low,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.high,@light.low,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@light.low,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.high,@light.low,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.high,@light.low,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@light.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.high,@light.low,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@light.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@light.low,@humidity.low,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@light.medium,@humidity.high,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@light.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@light.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.high,@light.medium,@humidity.medium,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@light.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@light.medium,@humidity.medium,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@light.medium,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@light.medium,@humidity.low,@distance.medium,@threat.high;
         @temp.medium,@smoke.high,@light.medium,@humidity.low,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@light.high,@humidity.high,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@light.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@light.high,@humidity.high,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@light.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@light.high,@humidity.medium,@distance.medium,@threat.high;
         @temp.medium,@smoke.high,@light.high,@humidity.medium,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@light.high,@humidity.low,@distance.far,@threat.high;
         @temp.medium,@smoke.high,@light.high,@humidity.low,@distance.medium,@threat.high;
         @temp.medium,@smoke.high,@light.high,@humidity.low,@distance.close,@threat.very_high;
         
         %temp.high y smoke.low
         @temp.high,@smoke.low,@light.low,@humidity.high,@distance.far,@threat.low;
         @temp.high,@smoke.low,@light.low,@humidity.high,@distance.medium,@threat.low;
         @temp.high,@smoke.low,@light.low,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.low,@humidity.medium,@distance.far,@threat.low;
         @temp.high,@smoke.low,@light.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.high,@smoke.low,@light.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.low,@humidity.low,@distance.far,@threat.low;
         @temp.high,@smoke.low,@light.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@light.low,@humidity.low,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.medium,@humidity.high,@distance.far,@threat.low;
         @temp.high,@smoke.low,@light.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@light.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.high,@smoke.low,@light.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@light.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.medium,@humidity.low,@distance.far,@threat.low;
         @temp.high,@smoke.low,@light.medium,@humidity.low,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@light.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.high,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.low,@light.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@light.high,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@light.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.high,@smoke.low,@light.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@light.high,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.low,@light.high,@humidity.low,@distance.far,@threat.medium;
         @temp.high,@smoke.low,@light.high,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.low,@light.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.high y smoke.medium
         @temp.high,@smoke.medium,@light.low,@humidity.high,@distance.far,@threat.low;
         @temp.high,@smoke.medium,@light.low,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@light.low,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.medium,@light.low,@humidity.medium,@distance.far,@threat.low;
         @temp.high,@smoke.medium,@light.low,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@light.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.high,@smoke.medium,@light.low,@humidity.low,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@light.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@light.low,@humidity.low,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@light.medium,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@light.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@light.medium,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@light.medium,@humidity.medium,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@light.medium,@humidity.medium,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@light.medium,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@light.medium,@humidity.low,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@light.medium,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@light.medium,@humidity.low,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@light.high,@humidity.high,@distance.far,@threat.high;
         @temp.high,@smoke.medium,@light.high,@humidity.high,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@light.high,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@light.high,@humidity.medium,@distance.far,@threat.high;
         @temp.high,@smoke.medium,@light.high,@humidity.medium,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@light.high,@humidity.medium,@distance.close,@threat.very_high;

         @temp.high,@smoke.medium,@light.high,@humidity.low,@distance.far,@threat.high;
         @temp.high,@smoke.medium,@light.high,@humidity.low,@distance.medium,@threat.very_high;
         @temp.high,@smoke.medium,@light.high,@humidity.low,@distance.close,@threat.very_high;
         
         %temp.high y smoke.high
         @temp.high,@smoke.high,@light.low,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.high,@light.low,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.high,@light.low,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.high,@light.low,@humidity.medium,@distance.far,@threat.medium;
         @temp.high,@smoke.high,@light.low,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.high,@light.low,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.high,@light.low,@humidity.low,@distance.far,@threat.high;
         @temp.high,@smoke.high,@light.low,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@light.low,@humidity.low,@distance.close,@threat.high;

         @temp.high,@smoke.high,@light.medium,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.high,@light.medium,@humidity.high,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@light.medium,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.high,@light.medium,@humidity.medium,@distance.far,@threat.high;
         @temp.high,@smoke.high,@light.medium,@humidity.medium,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@light.medium,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.high,@light.medium,@humidity.low,@distance.far,@threat.high;
         @temp.high,@smoke.high,@light.medium,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@light.medium,@humidity.low,@distance.close,@threat.very_high;

         @temp.high,@smoke.high,@light.high,@humidity.high,@distance.far,@threat.high;
         @temp.high,@smoke.high,@light.high,@humidity.high,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@light.high,@humidity.high,@distance.close,@threat.very_high;

         @temp.high,@smoke.high,@light.high,@humidity.medium,@distance.far,@threat.high;
         @temp.high,@smoke.high,@light.high,@humidity.medium,@distance.medium,@threat.very_high;
         @temp.high,@smoke.high,@light.high,@humidity.medium,@distance.close,@threat.very_high;

         @temp.high,@smoke.high,@light.high,@humidity.low,@distance.far,@threat.very_high;
         @temp.high,@smoke.high,@light.high,@humidity.low,@distance.medium,@threat.very_high;
         @temp.high,@smoke.high,@light.high,@humidity.low,@distance.close,@threat.very_high;
};
end

