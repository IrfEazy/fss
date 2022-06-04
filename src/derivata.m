function deri = derivata(dominio, segnale)
    %DERIVATA Computa il calcolo della funzione derivata di un segnale su
    %dominio.
    %   ...
    deri = zeros(size(dominio));
    dt = dominio(1, 2) - dominio(1, 1);

    for k = 2:length(deri)
        deri(1, k) = (segnale(1, k) - segnale(1, k - 1)) / dt;
    end

end
