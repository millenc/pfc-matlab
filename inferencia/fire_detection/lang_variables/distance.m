% Variable lingüística: Distancia (m)
classdef distance
    methods (Static)
        % Universo
        function x = get_x()
            x = 0:80;
        end
        
        % Valores
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

