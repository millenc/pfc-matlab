function l = lukasiewicz( varargin )

% Caso básico: 2 números
if length(varargin) == 2 && (isnumeric(varargin{1}) && length(varargin{1})==1) && (isnumeric(varargin{2}) && length(varargin{2})==1)
   l = max(varargin{1}+varargin{2}-1,0);
   return;
end

% Se pasa un vector como parámetro
if length(varargin) == 1 && isvector(varargin{1})
    if sum(cellfun(@(x) isnumeric(x),varargin)==0) > 0
        error('El vector de entrada contiene datos de tipo incorrecto');
    else
        inputs = varargin{1};
        
        % El vector debe tener al menos longitud 2
        if(length(inputs) < 2)
            error('El vector debe tener al menos 2 elementos');
        end
        
        %Aplicar la t-norma al vector
        l = lukasiewicz(inputs(1),inputs(2));
        for i=3:length(inputs)
            l = lukasiewicz(l,inputs(i));
        end
        
        return;
    end
end

% De momento no se contemplan más casos: Error
error('Argumentos incorrectos');

end

