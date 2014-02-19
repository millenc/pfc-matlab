classdef distance
    methods (Static)
        function u = close(distance)
            u = lineal(0,30,distance,'r');
        end
        
        function u = medium(distance)
            u = max([lineal(10,40,distance),lineal(40,70,distance,'r')]);
        end
        
        function u = far(distance)
            u = lineal(50,80,distance);
        end
    end  
end

