function fxy=fxy_ex(x,y)
%FXY_EX Affine
%   
global rep
if rep == 1
    fxy=y+2*x;
else
    fxy=(x-4*x*y)/(x.^2+1);
end
end