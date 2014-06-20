% Variable lingüística: Temperatura (ºC)
classdef temp
    methods (Static)
        % Universo
        function x = get_x()
            x = 0:120;
        end
        
        % Valores
        function u = low(temp)
            u = lineal(0,50,temp,'r');
        end
        
        function u = medium(temp)
            u = max([lineal(10,60,temp),lineal(60,110,temp,'r')]);
        end
        
        function u = high(temp)
            u = lineal(70,120,temp);
        end
    end  
end

