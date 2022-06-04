function trasDiHilb = trasformataDiHilbert(dominio, segnale)
    %TRASFORMATADIHILBERT Computa la funzione trasformata di Hilbert di un
    %segnale definito su dominio.
    %   ...
    h = 1 / pi ./ dominio;

    for k = 1:1:length(h)

        if isinf(h(1, k))
            h(1, k) = 1;
        end

    end

    trasDiHilb = convoluzione(dominio, segnale, h);
    trasDiHilb = trasDiHilb(2, 1:end);
end
