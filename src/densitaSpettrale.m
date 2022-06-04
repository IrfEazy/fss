function densSpet = densitaSpettrale(dominioTempi, segnale, dominioFrequenze)
    %DENSITASPETTRALE Computa la funzione densità spettrale di un segnale
    %definito su dominio.
    %   La densità spettrale altro non è che la il calcolo dell'antitrasformata
    %   di Fourier del quadrato del modulo della trasformata di Fourier del
    %   segnale in input.
    trasformataSegnale = trasformataDiFourier(dominioTempi, segnale, dominioFrequenze);
    trasformataDensitaSpettrale = abs(trasformataSegnale).^2;
    densSpet = antitrasformataDiFourier(dominioFrequenze, trasformataDensitaSpettrale, dominioTempi);
end
