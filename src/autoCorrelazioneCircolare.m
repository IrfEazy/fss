function autoCorrCirc = autoCorrelazioneCircolare(dominio, segnale, T)
    %AUTOCORRELAZIONECIRCOLARE Computa la funzione auto-correlazione circolare
    %di un segnale periodico definito su dominio.
    %   La funzione calcola l'autocorrelazione circolare del segnale
    %   T-periodico, che per definizione vuol dire calcolare la
    %   cross-correlazione circolare del segnale con sè stesso.
    %	crossCorrelazioneCircolare.m
    autoCorrCirc = crossCorrelazioneCircolare(dominio, segnale, segnale, T);
end
