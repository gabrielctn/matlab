function y=fun_rungekutta(x0,y0,xf,h)
%FUN_RUNGEKUTTA Méthode de résolution d'équation différentielle de
%premier ordre
%   Calcule de 5 termes à partir desquels on approxime y

y=[]; y(1)=y0;
j=2;

for i=x0+h:h:xf
   k1=h*fxy_ex(x0,y(j-1));
   k2=h*fxy_ex(x0+(h/2),y(j-1)+(k1/2));
   k3=h*fxy_ex(x0+(h/2),y(j-1)+(k2/2));
   k4=h*fxy_ex(x0+h, y(j-1)+k3);
   K=(1/6)*(k1+2*k2+2*k3+k4);
   y(j)=y(j-1)+K;
   j=j+1;
   x0=x0+h;
end;
end