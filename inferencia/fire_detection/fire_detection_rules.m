function R = fire_detection_rules()
rules = {
         %temp.low y smoke.low
         @temp.low,@smoke.low,@llight.low,@humidity.high,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@llight.low,@humidity.high,@distance.medium,@threat.very_low;
         @temp.low,@smoke.low,@llight.low,@humidity.high,@distance.close,@threat.very_low;
         
         @temp.low,@smoke.low,@llight.low,@humidity.medium,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@llight.low,@humidity.medium,@distance.medium,@threat.very_low;
         @temp.low,@smoke.low,@llight.low,@humidity.medium,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@llight.low,@humidity.low,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@llight.low,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@llight.low,@humidity.low,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@llight.medium,@humidity.high,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@llight.medium,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@llight.medium,@humidity.high,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@llight.medium,@humidity.medium,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@llight.medium,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@llight.medium,@humidity.medium,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@llight.medium,@humidity.low,@distance.far,@threat.very_low;
         @temp.low,@smoke.low,@llight.medium,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@llight.medium,@humidity.low,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@llight.high,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.low,@llight.high,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@llight.high,@humidity.high,@distance.close,@threat.low;
         
         @temp.low,@smoke.low,@llight.high,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.low,@llight.high,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.low,@llight.high,@humidity.medium,@distance.close,@threat.medium;
         
         @temp.low,@smoke.low,@llight.high,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.low,@llight.high,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.low,@llight.high,@humidity.low,@distance.close,@threat.medium;
         
         %temp.low y smoke.medium
         @temp.low,@smoke.medium,@llight.low,@humidity.high,@distance.far,@threat.very_low;
         @temp.low,@smoke.medium,@llight.low,@humidity.high,@distance.medium,@threat.very_low;
         @temp.low,@smoke.medium,@llight.low,@humidity.high,@distance.close,@threat.low;

         @temp.low,@smoke.medium,@llight.low,@humidity.medium,@distance.far,@threat.very_low;
         @temp.low,@smoke.medium,@llight.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@llight.low,@humidity.medium,@distance.close,@threat.low;

         @temp.low,@smoke.medium,@llight.low,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.low,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@llight.low,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@llight.medium,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.medium,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@llight.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@llight.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.medium,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@llight.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@llight.medium,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.medium,@humidity.low,@distance.medium,@threat.low;
         @temp.low,@smoke.medium,@llight.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@llight.high,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.low,@smoke.medium,@llight.high,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@llight.high,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.low,@smoke.medium,@llight.high,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.medium,@llight.high,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.medium,@llight.high,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.medium,@llight.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.low y smoke.high
         @temp.low,@smoke.high,@llight.low,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.high,@llight.low,@humidity.high,@distance.medium,@threat.low;
         @temp.low,@smoke.high,@llight.low,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.low,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.high,@llight.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.low,@smoke.high,@llight.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.low,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.high,@llight.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@llight.low,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.medium,@humidity.high,@distance.far,@threat.low;
         @temp.low,@smoke.high,@llight.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@llight.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.low,@smoke.high,@llight.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@llight.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.medium,@humidity.low,@distance.far,@threat.low;
         @temp.low,@smoke.high,@llight.medium,@humidity.low,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@llight.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.high,@humidity.high,@distance.far,@threat.medium;
         @temp.low,@smoke.high,@llight.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@llight.high,@humidity.high,@distance.close,@threat.medium;

         @temp.low,@smoke.high,@llight.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.low,@smoke.high,@llight.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.low,@smoke.high,@llight.high,@humidity.medium,@distance.close,@threat.high;

         @temp.low,@smoke.high,@llight.high,@humidity.low,@distance.far,@threat.medium;
         @temp.low,@smoke.high,@llight.high,@humidity.low,@distance.medium,@threat.high;
         @temp.low,@smoke.high,@llight.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.medium y smoke.low
         @temp.medium,@smoke.low,@llight.low,@humidity.high,@distance.far,@threat.very_low;
         @temp.medium,@smoke.low,@llight.low,@humidity.high,@distance.medium,@threat.very_low;
         @temp.medium,@smoke.low,@llight.low,@humidity.high,@distance.close,@threat.low;

         @temp.medium,@smoke.low,@llight.low,@humidity.medium,@distance.far,@threat.very_low;
         @temp.medium,@smoke.low,@llight.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@llight.low,@humidity.medium,@distance.close,@threat.low;

         @temp.medium,@smoke.low,@llight.low,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.low,@humidity.low,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@llight.low,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@llight.medium,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.medium,@humidity.high,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@llight.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@llight.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.medium,@humidity.medium,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@llight.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@llight.medium,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.medium,@humidity.low,@distance.medium,@threat.low;
         @temp.medium,@smoke.low,@llight.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@llight.high,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.low,@llight.high,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@llight.high,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.low,@llight.high,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.low,@llight.high,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.low,@llight.high,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.low,@llight.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.medium y smoke.medium
         @temp.medium,@smoke.medium,@llight.low,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@llight.low,@humidity.high,@distance.medium,@threat.low;
         @temp.medium,@smoke.medium,@llight.low,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@llight.low,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@llight.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.medium,@smoke.medium,@llight.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@llight.low,@humidity.low,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@llight.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@llight.low,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@llight.medium,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@llight.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@llight.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@llight.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.medium,@llight.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@llight.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@llight.medium,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@llight.medium,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@llight.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.medium,@smoke.medium,@llight.high,@humidity.high,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@llight.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@llight.high,@humidity.high,@distance.close,@threat.high;

         @temp.medium,@smoke.medium,@llight.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@llight.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.medium,@llight.high,@humidity.medium,@distance.close,@threat.high;

         @temp.medium,@smoke.medium,@llight.high,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.medium,@llight.high,@humidity.low,@distance.medium,@threat.high;
         @temp.medium,@smoke.medium,@llight.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.medium y smoke.high
         @temp.medium,@smoke.high,@llight.low,@humidity.high,@distance.far,@threat.low;
         @temp.medium,@smoke.high,@llight.low,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@llight.low,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.high,@llight.low,@humidity.medium,@distance.far,@threat.low;
         @temp.medium,@smoke.high,@llight.low,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@llight.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.medium,@smoke.high,@llight.low,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@llight.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@llight.low,@humidity.low,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@llight.medium,@humidity.high,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@llight.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@llight.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.medium,@smoke.high,@llight.medium,@humidity.medium,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@llight.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@llight.medium,@humidity.medium,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@llight.medium,@humidity.low,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@llight.medium,@humidity.low,@distance.medium,@threat.high;
         @temp.medium,@smoke.high,@llight.medium,@humidity.low,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@llight.high,@humidity.high,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@llight.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.medium,@smoke.high,@llight.high,@humidity.high,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@llight.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.medium,@smoke.high,@llight.high,@humidity.medium,@distance.medium,@threat.high;
         @temp.medium,@smoke.high,@llight.high,@humidity.medium,@distance.close,@threat.high;

         @temp.medium,@smoke.high,@llight.high,@humidity.low,@distance.far,@threat.high;
         @temp.medium,@smoke.high,@llight.high,@humidity.low,@distance.medium,@threat.high;
         @temp.medium,@smoke.high,@llight.high,@humidity.low,@distance.close,@threat.very_high;
         
         %temp.high y smoke.low
         @temp.high,@smoke.low,@llight.low,@humidity.high,@distance.far,@threat.low;
         @temp.high,@smoke.low,@llight.low,@humidity.high,@distance.medium,@threat.low;
         @temp.high,@smoke.low,@llight.low,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.low,@humidity.medium,@distance.far,@threat.low;
         @temp.high,@smoke.low,@llight.low,@humidity.medium,@distance.medium,@threat.low;
         @temp.high,@smoke.low,@llight.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.low,@humidity.low,@distance.far,@threat.low;
         @temp.high,@smoke.low,@llight.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@llight.low,@humidity.low,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.medium,@humidity.high,@distance.far,@threat.low;
         @temp.high,@smoke.low,@llight.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@llight.medium,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.medium,@humidity.medium,@distance.far,@threat.low;
         @temp.high,@smoke.low,@llight.medium,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@llight.medium,@humidity.medium,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.medium,@humidity.low,@distance.far,@threat.low;
         @temp.high,@smoke.low,@llight.medium,@humidity.low,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@llight.medium,@humidity.low,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.high,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.low,@llight.high,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@llight.high,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.low,@llight.high,@humidity.medium,@distance.far,@threat.medium;
         @temp.high,@smoke.low,@llight.high,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.low,@llight.high,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.low,@llight.high,@humidity.low,@distance.far,@threat.medium;
         @temp.high,@smoke.low,@llight.high,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.low,@llight.high,@humidity.low,@distance.close,@threat.high;
         
         %temp.high y smoke.medium
         @temp.high,@smoke.medium,@llight.low,@humidity.high,@distance.far,@threat.low;
         @temp.high,@smoke.medium,@llight.low,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@llight.low,@humidity.high,@distance.close,@threat.medium;

         @temp.high,@smoke.medium,@llight.low,@humidity.medium,@distance.far,@threat.low;
         @temp.high,@smoke.medium,@llight.low,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@llight.low,@humidity.medium,@distance.close,@threat.medium;

         @temp.high,@smoke.medium,@llight.low,@humidity.low,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@llight.low,@humidity.low,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@llight.low,@humidity.low,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@llight.medium,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@llight.medium,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.medium,@llight.medium,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@llight.medium,@humidity.medium,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@llight.medium,@humidity.medium,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@llight.medium,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@llight.medium,@humidity.low,@distance.far,@threat.medium;
         @temp.high,@smoke.medium,@llight.medium,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@llight.medium,@humidity.low,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@llight.high,@humidity.high,@distance.far,@threat.high;
         @temp.high,@smoke.medium,@llight.high,@humidity.high,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@llight.high,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.medium,@llight.high,@humidity.medium,@distance.far,@threat.high;
         @temp.high,@smoke.medium,@llight.high,@humidity.medium,@distance.medium,@threat.high;
         @temp.high,@smoke.medium,@llight.high,@humidity.medium,@distance.close,@threat.very_high;

         @temp.high,@smoke.medium,@llight.high,@humidity.low,@distance.far,@threat.high;
         @temp.high,@smoke.medium,@llight.high,@humidity.low,@distance.medium,@threat.very_high;
         @temp.high,@smoke.medium,@llight.high,@humidity.low,@distance.close,@threat.very_high;
         
         %temp.high y smoke.high
         @temp.high,@smoke.high,@llight.low,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.high,@llight.low,@humidity.high,@distance.medium,@threat.medium;
         @temp.high,@smoke.high,@llight.low,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.high,@llight.low,@humidity.medium,@distance.far,@threat.medium;
         @temp.high,@smoke.high,@llight.low,@humidity.medium,@distance.medium,@threat.medium;
         @temp.high,@smoke.high,@llight.low,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.high,@llight.low,@humidity.low,@distance.far,@threat.high;
         @temp.high,@smoke.high,@llight.low,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@llight.low,@humidity.low,@distance.close,@threat.high;

         @temp.high,@smoke.high,@llight.medium,@humidity.high,@distance.far,@threat.medium;
         @temp.high,@smoke.high,@llight.medium,@humidity.high,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@llight.medium,@humidity.high,@distance.close,@threat.high;

         @temp.high,@smoke.high,@llight.medium,@humidity.medium,@distance.far,@threat.high;
         @temp.high,@smoke.high,@llight.medium,@humidity.medium,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@llight.medium,@humidity.medium,@distance.close,@threat.high;

         @temp.high,@smoke.high,@llight.medium,@humidity.low,@distance.far,@threat.high;
         @temp.high,@smoke.high,@llight.medium,@humidity.low,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@llight.medium,@humidity.low,@distance.close,@threat.very_high;

         @temp.high,@smoke.high,@llight.high,@humidity.high,@distance.far,@threat.high;
         @temp.high,@smoke.high,@llight.high,@humidity.high,@distance.medium,@threat.high;
         @temp.high,@smoke.high,@llight.high,@humidity.high,@distance.close,@threat.very_high;

         @temp.high,@smoke.high,@llight.high,@humidity.medium,@distance.far,@threat.high;
         @temp.high,@smoke.high,@llight.high,@humidity.medium,@distance.medium,@threat.very_high;
         @temp.high,@smoke.high,@llight.high,@humidity.medium,@distance.close,@threat.very_high;

         @temp.high,@smoke.high,@llight.high,@humidity.low,@distance.far,@threat.very_high;
         @temp.high,@smoke.high,@llight.high,@humidity.low,@distance.medium,@threat.very_high;
         @temp.high,@smoke.high,@llight.high,@humidity.low,@distance.close,@threat.very_high;
};

[m,n] = size(rules);

%Inicializar el conjunto de reglas
for i=1:m
    R(i).n = i;
    R(i).A = rules(i,1:n-1);
    R(i).B = rules{i,n};
end
end