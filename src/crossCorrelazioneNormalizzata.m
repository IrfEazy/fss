function crosCorrNorm = crossCorrelazioneNormalizzata(dominio, segnale1, segnale2)
    %CROSSCORRELAZIONENORMALIZZATA Computa la funzione cross-correlazione
    %normalizzata fra due segnali segnale1 e segnale2 definiti su dominio.
    %   La funzione calcola la cross-correlazione normalizzata fra segnale1 e
    %   segnale2 sapendo che per definizione vuol dire calcolare la
    %	cross-correlazione normalizzata del segnale1 con segnale2.
    crosCorrNorm = crossCorrelazione(dominio, segnale1, segnale2);
    crosCorrNorm(2, 1:end) = crosCorrNorm(2, 1:end) / abs(valoreMedio(crosCorrNorm(1, :), crosCorrNorm(2, :)));
end
