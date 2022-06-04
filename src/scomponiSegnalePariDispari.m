function scomSegnPariDisp = scomponiSegnalePariDispari(dominio, segnale)
    %SCOMPONISEGNALEPARIDISPARI Computa i segnali pari e dispari di un segnale.
    %   ...
    segnaleOpposto = zeros(size(segnale));

    for k = 1:1:length(dominio)
        index = length(dominio) - k + 1;
        segnaleOpposto(1, k) = segnale(1, index);
    end

    scomSegnPariDisp = [1/2 * (segnale + segnaleOpposto); 1/2 * (segnale - segnaleOpposto)];
end
