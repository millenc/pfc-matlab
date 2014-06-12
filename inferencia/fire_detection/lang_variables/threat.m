classdef threat
    methods (Static)
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
