function trasDiFour = trasformataDiFourier(dominio1, segnale, dominio2)
    %TRASFORMATADIFOURIER Computa la funzione trasformata di Fourier di un
    %segnale definito su dominio.
    %   La funzione prende il dominio delle frequenze e per ognuno dei k-esimi
    %	valori in esso presenti si calcola la k-esima armonica. Successivamente
    %	si calcola la forma bilineare del segnale con ognuno delle k-esime
    %	armoniche computate e il risultato viene assegnato alla k-esima cella
    %	del risultato.
    %	formaBilineare.m
    trasDiFour = zeros(size(dominio2));

    for k = 1:1:length(dominio2)
        esponenzialeK = exp(1i * 2 * pi * dominio2(1, k) * dominio1);
        trasDiFour(1, k) = formaBilineare(dominio1, segnale, esponenzialeK);
    end

end
