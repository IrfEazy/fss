function invi = inviluppo(dominio, segnale)
    %INVILUPPO Computa l'inviluppo di un segnale definito su dominio.
    %   La funzione calcola l'inviluppo di un segnale secondo la definizione.
    trasDiHilb = trasformataDiHilbert(dominio, segnale);
    invi = sqrt(segnale.^2 + trasDiHilb.^2);
end
