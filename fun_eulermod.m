function y=fun_eulermod(x0,y0,xf,h)
%FUN_EULERMOD Méthode améliorée de résolution d'équation différentielle de
%premier ordre
%   On calcule la moyenne de ses valeurs aux deux points d'extrémité de
%   l'intervalle

y=[]; 
y(1)=y0;
j=2;
for i=x0+h:h:xf
    y(j)=y(j-1)+h*fxy_ex(x0,y0);
    for k=1:3
        y(j)=y(j-1)+h*((fxy_ex(x0,y0)+fxy_ex(x0+h,y(j)))/2);
    end;
    x0=x0+h;
    y0=y(j);
    j=j+1;
    end;
end