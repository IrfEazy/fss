function senoCard = sinc(dominio)
    %SINC Computa la funzione seno cardinale su dominio.
    %   ...
    senoCard = sin(pi * dominio) ./ (pi * dominio);

    for k = 1:1:length(senoCard)

        if isnan(senoCard(1, k))
            senoCard(1, k) = 1;
        end

    end

end
