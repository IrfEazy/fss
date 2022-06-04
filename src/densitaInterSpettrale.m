function densInteSpet = densitaInterSpettrale(dominio, segnale1, segnale2)
    %DENSITAINTERSPETTRALE Computa la funzione densità inter-spettrale fra i
    %segnali segnale1 e segnale2.
    %   La densità inter-spettrale altro non è che il calcolo della
    %	cross-correlazione fra i due segnali.
    densInteSpet = crossCorrelazione(dominio, segnale1, segnale2);
end
