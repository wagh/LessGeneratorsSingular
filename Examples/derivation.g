# This defines a Q(t)[x,y,z], where t is a fifth root of unity.
R := HomalgFieldOfRationalsInSingular( "t", "t^4+t^3+t^2+t+1" ) * "x,y,z";

# Choose n, q such that 
# 0<q<n and (n,q)=1


I := LeftSubmodule("x^2*y+y^2*z,x*y*z", R);
Q := R / I;

omega := KaehlerDifferentials( Q );
Der := Hom( omega );

V4 := [ [ [ -1, 0, 0 ],   [  0, 1, 0 ],   [  0, 0,-1 ] ],  [ [ -1, 0, 0 ],   [  0,-1, 0 ],   [  0, 0, 1 ] ] ];;

