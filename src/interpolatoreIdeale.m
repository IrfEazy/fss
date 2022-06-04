function inteIdea = interpolatoreIdeale(dominio, segnale, frequenzaCampione)
    %INTERPOLATOREIDEALE Computa le funzioni di ricostruzione
    %dell'interpolatore ideale su un segnale campionato a frequenza data in
    %input definita su dominio.
    %   La funzione calcola dapprima il segnale campionato del segnale [per
    %   ulteriore spiegazione si rimanda alla funzione campionatore.m]. In
    %   seguito la funzione si occupa di ricostruire il segnale in input dal
    %   segnale campionato ricostruendolo secondo la definizione con seni
    %   cardinali.
    %	campionatore.m
    %	trovaCelleCampione.m
    %	sinc.m
    inteIdea = zeros(size(dominio));
    periodoCampione = frequenzaCampione^ - 1;
    segnaleCampionato = campionatore(dominio, segnale, frequenzaCampione);
    celleCampione = trovaCelleCampione(dominio, frequenzaCampione);

    for k = 1:length(celleCampione)
        inteIdea = inteIdea + segnaleCampionato(celleCampione(k)) * sinc((dominio - dominio(celleCampione(k))) / periodoCampione);
    end

end
