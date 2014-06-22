% Hash de conjuntos difusos
% Devuelve:
%
% fh: Puntero a una función que implementa una tabla hash de conjuntos
% difusos con parámetros:
%   mf: Función de pertenencia del conjunto.
%   x: Universo de referencia.
% Si el conjunto se ha calculado previamente, se devuelve dicho valor
% precalculado. En caso contrario, se aplica la función de pertenencia mf
% al universo de referencia x.
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