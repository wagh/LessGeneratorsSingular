homalgIOMode("D");
S := HomalgFieldOfRationalsInSingular( )  * "x,y,z";
f := Random( S );

# f;
# R := S / f;
# omega := KaehlerDifferentials ( R );
# Der := Hom( omega );
# Der;
# ByASmallerPresentation( Der );

S2 := HomalgFieldOfRationalsInMAGMA( )  * "x,y,z";
f2 := Random( S2 );
R2 := S2 / f2;
omega2 := KaehlerDifferentials ( R2 );
Der2 := Hom( omega2 );
ByASmallerPresentation( Der2 );
