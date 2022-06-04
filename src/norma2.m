function norm2 = norma2(dominio, segnale)
    %NORMA2 Computa la norma quadratica di un segnale su dominio.
    %   La funzione calcola la norma di un segnale secondo la definizione.
    norm2 = sqrt(energia(dominio, segnale));
end
