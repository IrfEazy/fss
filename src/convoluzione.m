function conv = convoluzione(dominio, segnale1, segnale2)
    %CONVOLUZIONE Computa la convoluzione fra due segnali segnale1 e segnale2
    %definiti su dominio.
    %   La funzione calcola la convoluzione del segnale1 con il segnale2
    %   secondo la definizione di convoluzione fra due segnali.
    %	crossCorrelazione.m
    segnale1Opposto = zeros(size(segnale1));

    for k = 1:1:length(segnale1)
        segnale1Opposto(1, length(segnale1) - k + 1) = segnale1(1, k);
    end

    conv = crossCorrelazione(dominio, conj(segnale1Opposto), segnale2);
end
