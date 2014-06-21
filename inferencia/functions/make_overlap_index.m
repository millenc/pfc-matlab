% Construcción de índice de solapamiento
% M: Una función de agregación.
% Go: Una función de solapamiento
% O: Valor devuelto, el índice de solapamiento construido a partir de M y
% Go.
function O = make_overlap_index( M , Go )

    function o = overlap_index( A , B )
        o = M(arrayfun(Go,A,B));
    end

    O = @overlap_index;
end

