function ondaQuad = q(dominio, ampiezza, periodo, cambioScala)
    %Q Computa la funzione onda quadra su dominio.
    %   ...
    ondaQuad = zeros(size(dominio));

    for k = -length(dominio):1:length(dominio)
        ondaQuad = ondaQuad + ampiezza * rect((dominio - k * periodo) / cambioScala);
    end

end
