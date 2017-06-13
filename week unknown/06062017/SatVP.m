function [ea, es] = SatVP (Ta, RH)
es = 611.*exp(17.27.*Ta./(237.3+Ta));%Pa
ea = RH.*es/100