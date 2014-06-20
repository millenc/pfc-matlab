% Variable lingüística: Humo (ppm)
classdef smoke
    methods (Static)
        % Universo
        function x = get_x()
            x = 0:100;
        end
        
        % Valores
        function u = low(smoke)
            u = lineal(0,40,smoke,'r');
        end
        
        function u = medium(smoke)
            u = max([lineal(10,50,smoke),lineal(50,90,smoke,'r')]);
        end
        
        function u = high(smoke)
            u = lineal(60,100,smoke);
        end
    end  
end

