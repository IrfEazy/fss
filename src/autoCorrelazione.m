function autoCorr = autoCorrelazione(dominio, segnale)
    %AUTOCORRELAZIONE Computa la funzione auto-correlazione del segnale
    %definito su dominio.
    %   la funzione calcola l'autocorrelazione del segnale sapendo che per
    %   definizione vuol dire calcolare la cross-correlazione del segnale con
    %   sé stesso.
    %	crossCorrelazione.m
    autoCorr = crossCorrelazione(dominio, segnale, segnale);
end
