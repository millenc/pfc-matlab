% Variable lingüística: Luz (lux)
classdef llight
    methods (Static)
        % Universo
        function x = get_x()
            x = 0:1000;
        end
        
        % Valores
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

