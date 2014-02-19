classdef light
    methods (Static)
        function u = low(light)
            u = lineal(0,400,light,'r');
        end
        
        function u = medium(light)
            u = max([lineal(100,500,light),lineal(500,900,light,'r')]);
        end
        
        function u = high(light)
            u = lineal(600,1000,light);
        end
    end  
end

