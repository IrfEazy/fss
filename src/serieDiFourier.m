function seriDiFour = serieDiFourier(dominio, segnale, periodo, nCoefficienti)
    % Calcola la serie di Fourier di un segnale rendendolo periodico (il
    % periodo è dato in input) e calcolando tanti coefficienti di Fourier
    % quanti scelti dall'esterno della funzione (tanto più il numero di
    % coefficienti è alto, tanto più la serie di Fourier si avvicina
    % all'andamento del segnale).
    %	La funzione dapprima finestra il segnale in input perché la periodicità
    %	del segnale sarà dato a gratis dalle armoniche che la serie di Fourier
    %	introduce per l'approssimazione del segnale. In seguito si genera il
    %	campo Z dei numeri relativi e da esso riusciamo così a generare il
    %	campo delle frequenze relativo al segnale dato. Si ordina così alla
    %	funzione trasformataDiFourier.m di calcolare i coefficienti di Fourier
    %	del segnale e da essi vengono selezionati in numero tanti quanti ne ha
    %	scelti l'utente.
    %	[OSSERVAZIONE: se si vogliono x armoniche allora in input, nel campo
    %	nCoefficienti, deve essere inserito 2x - 1]
    %	[OSSERVAZIONE: il numero di coefficienti scelto in input viene filtrato
    %	di modo da non far entrare più volte gli stessi coefficienti proprio
    %	perché se il passo del dominio è 0.01, allora nel campo delle frequenze
    %	si creano delle repliche ad alte frequenze].
    %	In seguito la funzione si occupa solo di prendere i coefficienti di
    %	Fourier fin qui estratti e si computa la serie di Fourier sommando al
    %	risultato tutte le armoniche relative ai coefficienti stessi.
    seriDiFour = zeros(size(segnale));
    segnaleFinestrato = finestramento(dominio, segnale, periodo, 0);
    campoZ = -floor(length(dominio) / 2):1:floor(length(dominio) / 2);
    coefficienti = 1 / periodo * trasformataDiFourier(dominio, segnaleFinestrato, campoZ / periodo);
    numeroCoefficienti = fix(rem(nCoefficienti, 2 * (dominio(1, 2) - dominio(1, 1))^ - 1));

    if numeroCoefficienti < length(coefficienti)
        metaCoefficienti = numeroCoefficienti / 2;
        raggioCoefficientiDestra = floor(metaCoefficienti);

        if rem(numeroCoefficienti, 2) == 1
            raggioCoefficientiSinistra = floor(metaCoefficienti);
        else
            raggioCoefficientiSinistra = floor(metaCoefficienti) - 1;
        end

        metaCampoZ = ceil(length(campoZ) / 2);
        limiteSinistro = metaCampoZ - raggioCoefficientiSinistra;
        limiteDestro = metaCampoZ + raggioCoefficientiDestra;
        coefficienti = coefficienti(1, limiteSinistro:limiteDestro);
        campoZ = campoZ(1, limiteSinistro:limiteDestro);

        for k = 1:1:numeroCoefficienti
            esponenziale = exp(1i * campoZ(1, k) * 2 * pi / periodo * dominio);
            seriDiFour = seriDiFour + coefficienti(1, k) * esponenziale;
        end

    else

        for k = 1:1:length(coefficienti)
            esponenziale = exp(1i * campoZ(1, k) * 2 * pi / periodo * dominio);
            seriDiFour = seriDiFour + coefficienti(1, k) * esponenziale;
        end

    end

end
