function faseIsta = faseIstantanea(dominio, segnale)
    %FASEISTANTANEA Computa la fase istantanea di un segnale definito su
    %dominio.
    %   La funzione calcola la faseIstantanea del segnale.
    trasDiHilb = trasformataDiHilbert(dominio, segnale);
    faseIsta = atan(trasDiHilb ./ segnale);
end
