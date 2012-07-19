S := HomalgFieldOfRationalsInSingular() * "x,y,z";
f := Random( S );
omega := KaehlerDifferentials( R );

S2 := HomalgFieldOfRationalsInMAGMA() * "x,y,z";
omega2 := omega * S2;

K := SyzygiesObject( omega2 );
IsProjective( K );
IsStablyFree( omega2 );
TorsionSubobject( omega2 );
TorsionObjectEmb( omega2 );  
IsIsomorphism( last );
TorsionFreeFactor( omega2 );
IsReflexive( last );



