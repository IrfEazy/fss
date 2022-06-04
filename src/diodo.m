function y = diodo(x)
    %DIODO Simula il comportamento di un diodo.
    %   A fronte di un ingresso x(t) restituisce il segnale
    %
    %		y(t) =	x(t),	se x(t) >= 0.2
    %			 =	   0,	se x(t)  < 0.2
    alfa = 0.2;
    y = (x >= alfa) .* x;
end
