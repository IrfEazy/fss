function ritaDiFase = ritardoDiFase(dominio, rispostaAllImpulso)
    %RITARDODIFASE Computa il ritardo di fase di una risposta all'impulso di un
    %sistema LTI definito su dominio.
    %   ...
    rispostaInFrequenza = trasformataDiFourier(dominio, rispostaAllImpulso);
    ritaDiFase =- angle(rispostaInFrequenza) ./ (2 * pi * dominio);
end
