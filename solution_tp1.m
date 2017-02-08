% Expliquez comment fonctionnne notre programme: que faut-il supprimer
% suivant les diff�rentes �quations que l'on veut �tudier

clear all; 
close all;

global rep;
prompt='Quelle �quation voulez-vous �tudier: 1:dx/dy=2x+y    2:(x�+1)dx/dy+4xy=x \n';
rep = input(prompt);

prompt='Rentrer le pas h:  ';
h= input(prompt);

if rep == 1
    y0=1;
    x0=0;
    xf=1;
else
    y0=1;
    x0=2;
    xf=4;
end

t=x0:h:xf;
if rep == 1
    yexp=-2*(t+1)+3*exp(t);
else
    yexp=(((t.^4)/4)+((t.^2)/2)+19)./(((t.^2)+1).^2);
end

[a,b]=ode45(@(a,b) fxy_ex,[x0 xf],y0);

ye=fun_euler(x0,y0,xf,h);
y=fun_eulermod(x0,y0,xf,h);
yrk=fun_rungekutta(x0,y0,xf,h);


plot(x0:h:xf,y,'b'); hold on 
plot(x0:h:xf,ye,'r');
plot(x0:h:xf,yexp,'g');
plot(x0:h:xf,yrk,'k');
plot(a,b,'-o');

fprintf('explicite');
disp(yexp);
fprintf('euler');
disp(ye);
fprintf('euler modifi�');
disp(y);
fprintf('diff�rence entre euler et explicite');
disp(ye-yexp);
fprintf('diff�rence entre euler modifi� et explicite');
disp(y-yexp);