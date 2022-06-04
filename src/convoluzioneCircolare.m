function convCirc = convoluzioneCircolare(dominio, segnale1, segnale2, T)
    %CONVOLUZIONECIRCOLARE Computa la funzione convoluzione circolare fra due
    %segnali segnale1 e segnale2 periodiche definiti su dominio.
    %   La funzione calcola la convoluzione circolare fra segnale1 e segnale2,
    %   sapendo che sono T - periodici, finestrando gli stessi e quindi
    %   calcolandone la convoluzione dei segnali così ottenuti.
    %	convoluzione.m
    segnale1Finestrato = segnale1 .* rect(dominio / 2 / T);
    segnale2Finestrato = segnale2 .* rect(dominio / 2 / T);
    conv = convoluzione(dominio, segnale1Finestrato, segnale2Finestrato);
    convCirc = conv / T;
end
