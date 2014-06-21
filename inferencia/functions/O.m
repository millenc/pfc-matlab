% Índices de solapamiento
classdef O
    methods (Static)
        function O = pi()
            O = make_overlap_index(@mean,@(x,y)(x*y));
        end

        function O = avgmin()
            O = make_overlap_index(@mean,@min);
        end

        function O = maxmin()
            O = make_overlap_index(@max,@min);
        end

        function O = sqrt()
            O = make_overlap_index(@mean,@(x,y)(sqrt(x*y)));
        end

        function O = sin()
            O = make_overlap_index(@mean,@(x,y)(sin((pi/2)*(x*y)^(1/4))));
        end
    end
end

