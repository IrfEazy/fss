function diod2 = diodo2(x, t)
    %DIODO2 Simula un diodo che si accende all'istante t0 = 1s.
    %		y(t) =	x(t),	se x(t) >= 0.2 && t >= 1
    %			 =	   0,	se x(t)  < 0.2 || t  < 1
    %	diodo.m
    t0 = 1;
    diod = diodo(x);
    diod2 = diod .* (t >= t0);
end
