function ener = energia(dominio, segnale)
    %energia Computa il valore dell'energia di una funzione f su x.
    %   {tex}\int_{-\infty}^{\infty}{|f(x)|^{2} dx}{/tex}
    ener = integrale(dominio, abs(segnale).^2);
end
