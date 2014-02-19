classdef temp
    methods (Static)
        function u = low(temp)
            u = lineal(0,50,temp,'r');
        end
        
        function u = medium(temp)
            u = max([lineal(10,60,temp),lineal(60,120,temp,'r')]);
        end
        
        function u = high(temp)
            u = lineal(70,130,temp);
        end
    end  
end

