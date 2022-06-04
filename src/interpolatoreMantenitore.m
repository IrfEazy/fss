function ricoMant = interpolatoreMantenitore(dominio, segnale, frequenzaCampione)
    %INTERPOLATOREMANTENITORE Computa le funzioni di ricostruzione
    %del mantenitore su un segnale campionato a frequenza data in input
    %	definita su dominio.
    %   La funzione calcola dapprima il segnale campionato del segnale [per
    %   ulteriore spiegazione si rimanda alla funzione campionatore.m]. In
    %   seguito la funzione si occupa di ricostruire il segnale in input dal
    %   segnale campionato ricostruendolo secondo la definizione con segnali
    %   rettangolare.
    %	campionatore.m
    %	trovaCelleCampione.m
    %	rect.m
    ricoMant = zeros(size(dominio));
    periodoCampione = frequenzaCampione^ - 1;
    segnaleCampionato = campionatore(dominio, segnale, frequenzaCampione);
    celleCampione = trovaCelleCampione(dominio, frequenzaCampione);

    for k = 1:length(celleCampione)
        ricoMant = ricoMant + segnaleCampionato(celleCampione(k)) * rect((dominio - dominio(celleCampione(k))) / periodoCampione - 1/2);
    end

end
