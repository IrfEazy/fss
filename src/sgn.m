function segn = sgn(dominio)
    %SGN Computa la funzione segno su dominio.
    %   {tex}sgn(t)=\begin{cases}-1,&t<0\\0,&t=0\\1,&t>0\end{cases}{/tex}
    segn = 2 * gradino(dominio) - 1;
end
