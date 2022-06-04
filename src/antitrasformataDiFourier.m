function antiDiFour = antitrasformataDiFourier(dominioFrequenze, segnale, dominioTempi)
    %ANTITRASFORMATADIFOURIER Computa la funzione antitrasformata di Fourier di
    %un segnale definito su dominio.
    %	La funzione prende il dominio del tempo e per ognuno dei k-esimi valori
    %	in esso presenti si calcola la k-esima armonica. Successivamente si
    %	calcola la forma bilineare del segnale con ognuno delle k-esime
    %	armoniche computate e il risultato viene assegnato alla k-esima cella
    %	del risultato.
    %	formaBilineare.m
    antiDiFour = zeros(size(dominioTempi));

    for k = 1:1:length(dominioTempi)
        esponenzialeK = exp(-1i * 2 * pi * dominioTempi(1, k) * dominioFrequenze);
        antiDiFour(1, k) = formaBilineare(dominioTempi, segnale, esponenzialeK);
    end

end
