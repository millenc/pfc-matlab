% Variable lingüística: Riesgo del incendio (%C)
classdef threat
    methods (Static)
        % Universo
        function x = get_x()
            x = 0:100;
        end
        
        % Valores
        function u = very_low(threat)
            u = lineal(0,25,threat,'r');
        end
        
        function u = low(threat)
            u =  max([lineal(0,25,threat),lineal(25,50,threat,'r')]);
        end
        
        function u = medium(threat)
            u = max([lineal(25,50,threat),lineal(50,75,threat,'r')]);
        end
        
        function u = high(threat)
            u = max([lineal(50,75,threat),lineal(75,100,threat,'r')]);
        end
        
        function u = very_high(threat)
            u = lineal(75,100,threat);
        end
    end  
end

