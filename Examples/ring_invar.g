LoadPackage( "Orbifolds" );

# R := HomalgFieldOfRationalsInSingular( ) * "x,y,z";
# V4 := [ [ [ -1, 0, 0 ],   [  0, 1, 0 ],   [  0, 0,-1 ] ],  [ [ -1, 0, 0 ],   [  0,-1, 0 ],   [  0, 0, 1 ] ] ];
# V4 := Group( V4 );
# RG := GroupInvariants( V4, R );

QQ := HomalgFieldOfRationalsInSingular( );
S := QQ * "x,y,z";
d := 10;
f := RandomPol( S, d );
f;
if (IsIrreducible( f ))
    R := S / f;
    omega := KaehlerDifferentials ( R );
    Der := Hom( omega );
fi;
