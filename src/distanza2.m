function dist2 = distanza2(dominio, segnale1, segnale2)
    %DISTANZA2 Computa la distanza fra i segnali segnale1 e segnale2.
    %   La funzione calcola la distanza quadratica fra due segnali.
    dist2 = norma2(dominio, segnale1 - segnale2);
end
