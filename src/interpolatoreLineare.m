function inteLine = interpolatoreLineare(dominio, segnale, frequenzaCampione)
    %INTERPOLATORELINEARE Computa le funzioni di ricostruzione
    %dell'interpolatore lineare su un segnale campionato a frequenza data in
    %input definita su dominio.
    %   La funzione calcola dapprima il segnale campionato del segnale [per
    %   ulteriore spiegazione si rimanda alla funzione campionatore.m]. In
    %   seguito la funzione si occupa di ricostruire il segnale in input dal
    %   segnale campionato ricostruendolo secondo la definizione con segnali
    %   triangolari.
    %	campionatore.m
    %	trovaCelleCampione.m
    %	tri.m
    inteLine = zeros(size(dominio));
    periodoCampione = frequenzaCampione^ - 1;
    segnaleCampionato = campionatore(dominio, segnale, frequenzaCampione);
    celleCampione = trovaCelleCampione(dominio, frequenzaCampione);

    for k = 1:length(celleCampione)
        inteLine = inteLine + segnaleCampionato(celleCampione(k)) * tri((dominio - dominio(celleCampione(k))) / periodoCampione);
    end

end
