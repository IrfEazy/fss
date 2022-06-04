function valoMedi = valoreMedio(dominio, segnale)
    %VALOREMEDIOTEMPORALE Computa il valore medio temporale della funzione f su
    %x.
    %   {tex}\lim_{D\to
    %   \infty}{\frac{1}{D}\int_{-\frac{D}{2}}^{\frac{D}{2}}{f(x) dx}{/tex}
    valoMedi = (max(dominio) - min(dominio))^ - 1 * integrale(dominio, segnale);
end
