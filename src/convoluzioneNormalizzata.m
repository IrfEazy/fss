function convNorm = convoluzioneNormalizzata(dominio, segnale1, segnale2)
    %CONVOLUZIONENORMALIZZATA Computa la convoluzione normalizzata dei segnali
    %segnale1 e segnale2 definiti su dominio.
    %   La funzione calcola la convoluzione normalizzata fra segnale1 e
    %   segnale2 ordinando dapprima alla funzione convoluzione.m il calcolo
    %   della convoluzione fra i due, e successivamente effettuando una
    %   divisione con il diametro del dominio.
    convNorm = convoluzione(dominio, segnale1, segnale2);
    convNorm(2, 1:end) = convNorm(2, 1:end) / valoreMedio(convNorm(1, :), convNorm(2, :));
end
