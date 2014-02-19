classdef humidity
    methods (Static)
        function u = low(humidity)
            u = lineal(0,40,humidity,'r');
        end
        
        function u = medium(humidity)
            u = max([lineal(10,50,humidity),lineal(50,90,humidity,'r')]);
        end
        
        function u = high(humidity)
            u = lineal(60,100,humidity);
        end
    end  
end
