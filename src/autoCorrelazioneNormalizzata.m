function autoCorrNorm = autoCorrelazioneNormalizzata(dominio, segnale)
    %AUTOCORRELAZIONENORMALIZZATA Computa la funzione auto-correlazone
    %normalizzata di un segnale definito su dominio.
    %   La funzione calcola l'autocorrelazione normalizzata del segnale
    %   sapendo che per definizione vuol dire calcolare la cross-correlazione
    %   normalizzata del segnale con sè stesso.
    %	crossCorrelazioneNormalizzata.m
    autoCorrNorm = crossCorrelazioneNormalizzata(dominio, segnale, segnale);
end
