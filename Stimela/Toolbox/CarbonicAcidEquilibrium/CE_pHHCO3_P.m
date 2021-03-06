function P=CE_pHHCO3_P(pH,HCO3,K1,K2,Kw,f)
% calculation of P using pH and HCO3
H3O = 10.^(3-pH)./f;
K1=K1./f.^2;K2=K2./f.^4;Kw=Kw./f.^2;
P = -(-K1.*K2.*HCO3+HCO3.*H3O.^2-Kw.*K1+H3O.^2.*K1)./H3O./K1;

