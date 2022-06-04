function inviComp = inviluppoComplesso(dominio, segnale, frequenza)
    %INVILUPPOCOMPLESSO Computa l'inviluppo complesso di un segnale definito su
    %dominio.
    %   La funzione calcola l'inviluppo complesso di un segnale secondo la
    %   definizione.
    segnAnal = segnaleAnalitico(dominio, segnale);
    esponenziale = exp(-1i * 2 * pi * frequenza * dominio);
    inviComp = segnAnal .* esponenziale;
end
