function fh = fuzzyset_hash()
    hash = struct;

    function fs = get_fuzzy_set( mf , x )
        f_key = strrep(func2str(mf),'.','');
        if(isfield(hash, f_key) == 0)
            fs = arrayfun(mf, x);
            hash.(f_key) = fs;
        else
            fs = getfield(hash, f_key);
        end
    end

    fh = @get_fuzzy_set;
end