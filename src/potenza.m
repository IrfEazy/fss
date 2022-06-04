function pote = potenza(dominio, segnale)
    %POTENZA Computa la potenza di un segnale su dominio.
    %   {tex}\lim_{A\to
    %   \infty}{\frac{1}{A}\int_{-\frac{A}{2}}^{\frac{A}{2}}{|f(x)|^{2}
    %   dt}{/tex}
    %	integrale.m
    pote = (abs(dominio(1, end) - dominio(1, 1)))^ - 1 * integrale(dominio, abs(segnale).^2);
end
