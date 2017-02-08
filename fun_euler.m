function ye=fun_euler(x0,y0,xf,h)
%FUN_EULER Méthode approximative de résolution d'équation différentielle de
%premier ordre
%   h est un incrément sur x suffisament petit et positif
%   ye est un vecteur rassemblant tous les résultats

ye=[y0];
for x=x0+h:h:xf 
    y1=y0 + h*fxy_ex(x,y0);
    ye=[ye,y1];
    y0=y1;
end;

end


