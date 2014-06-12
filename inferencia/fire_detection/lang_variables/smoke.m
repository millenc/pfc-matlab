classdef smoke
    methods (Static)
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

