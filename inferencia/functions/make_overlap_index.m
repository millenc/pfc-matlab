function O = make_overlap_index( M , Go )
%MAKE_OVERLAP_INDEX Summary of this function goes here
%   Detailed explanation goes here

    function o = overlap_index( A , B )
        o = M(arrayfun(Go,A,B));
    end

    O = @overlap_index;
end

