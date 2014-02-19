clearvars;
addpath('./fire_detection_lang_variables');

x_temp     = 0:130;
x_smoke    = 0:100;
x_light    = 0:1000;
x_humidity = 0:100;
x_distance = 0:80;
x_threat   = 0:100;

x = x_temp;
subplot(3,2,1)
plot(x,arrayfun(@temp.low,x),x,arrayfun(@temp.medium,x),x,arrayfun(@temp.high,x));
title('Temperature (�C)')
legend('Low','Medium','High');

x = x_smoke;
subplot(3,2,2)
plot(x,arrayfun(@smoke.low,x),x,arrayfun(@smoke.medium,x),x,arrayfun(@smoke.high,x));
title('Smoke (ppm)')
legend('Low','Medium','High');

x = x_light;
subplot(3,2,3)
plot(x,arrayfun(@light.low,x),x,arrayfun(@light.medium,x),x,arrayfun(@light.high,x));
title('Light (lux)')
legend('Low','Medium','High');

x = x_humidity;
subplot(3,2,4)
plot(x,arrayfun(@humidity.low,x),x,arrayfun(@humidity.medium,x),x,arrayfun(@humidity.high,x));
title('Humidity (ppm)')
legend('Low','Medium','High');

x = x_distance;
subplot(3,2,5)
plot(x,arrayfun(@distance.close,x),x,arrayfun(@distance.medium,x),x,arrayfun(@distance.far,x));
title('Distance (m)')
legend('Close','Medium','Far');

x = x_threat;
subplot(3,2,6)
plot(x,arrayfun(@threat.very_low,x),x,arrayfun(@threat.low,x),x,arrayfun(@threat.medium,x),x,arrayfun(@threat.high,x),x,arrayfun(@threat.very_high,x));
title('Threat of fire (%)')
legend('Very Low','Low','Medium','High','Very High');


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

[m,n] = size(rules);
%Inicializar el conjunto de reglas
for i=1:m
    R(i).n = i;
    R(i).A = rules(i,1:n-1);
    R(i).B = rules{i,n};
end

% Construcci�n de �ndices de solapamiento
Opi = make_overlap_index(@mean,@(x,y)(x*y));

%Funciones utilizadas en la interpolaci�n
O = Opi;
T = @prod;
M = @mean;

% Hechos
fact(1) = fact_value(x_temp, 10);
fact(2) = fact_value(x_smoke, 0);
fact(3) = fact_value(x_light, 100);
fact(4) = fact_value(x_humidity, 100);
fact(5) = fact_value(x_distance, 80);

% Variable universo de salida
y.v(1,:) = x_threat;
y.v(2,:) = zeros(length(x_threat),1);

Y = interpolation( R, fact, y, O , T, M);

figure;
plot(x_threat,Y);
title('Threat');
