function crosCorrCirc = crossCorrelazioneCircolare(dominio, segnale1, segnale2, T)
    %CROSSCORRELAZIONECIRCOLARE Computa la funzione cross-correlazione
    %circolare fra due segnale segnale1 e segnale2 periodiche definiti su
    %dominio.
    %   La funzione calcola la cross-correlazione circolare fra segnale1 e
    %   segnale2, sapendo essere due segnali T - periodici, ordinando alla
    %   funzione crossCorrelazione.m di eseguire il calcolo della
    %   cross-correlazione fra i due segnali finestrati.
    segnale1Finestrato = segnale1 .* rect(dominio / T);
    segnale2Finestrato = segnale2 .* rect(dominio / T);
    crosCorr = crossCorrelazione(dominio, segnale1Finestrato, segnale2Finestrato);
    crosCorrCirc = crosCorr / T;
end
