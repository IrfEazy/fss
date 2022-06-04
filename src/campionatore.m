function [segnaleCampionato, celleCampione] = campionatore(dominio, segnale, frequenzaCampione)
    %CAMPIONATORE Computa il campionamento del segnale definito su dominio con
    %una certa frequenza di campionamento dato in input.
    %   La funzione simula il comportamento del campionatore. Dapprima la
    %   funzione cerca la cella nel dominio del segnale in cui si trova lo '0',
    %   in seguito computa il numero di celle da saltare, ovvero ogni quante
    %	celle si trova un campione da prendere in considerazione. Poi viene
    %	calcolato il periodo di campionamento del segnale dalla frequenza di
    %	campionamento e quindi istanzia un vettore nullo delle celle da
    %	selezionare dal segnale. Il vettore celleCampione viene iterativamente
    %	generato aggiungendogli volta per volta l'indice delle celle. Infine
    %	banalmente viene posto a risultato della funzione il segnale
    %	campionato.
    %	trovaCelleCampione.m
    celleCampione = trovaCelleCampione(dominio, frequenzaCampione);
    segnaleCampionato = zeros(size(segnale));
    segnaleCampionato(celleCampione) = segnale(celleCampione);
end
