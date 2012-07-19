# LoadPackage( "MatricesForHomalg" );
R := HomalgFieldOfRationalsInSingular( ) * "x,y,z";
m := HomalgMatrix( "[ \
    0,  73y+72,0,         0,    0,      0,     0,      72x+79z,0,      0,      \
    0,  0,     0,         89z,  0,      0,     0,      12z,    87,     96y,    \
    39x,0,     0,         54z+6,9,      0,     0,      0,      93y+92z,32x+38y,\
    0,  26y,   0,         0,    45y+77z,28x,   84,     0,      0,      18,     \
    0,  0,     28x+24y+26,24,   0,      71y+10,53x+62z,0,      0,      0,      \
    0,  0,     7y,        0,    10x,    0,     0,      0,      0,      3y+10z \
]", 6, 10, R );
# M := LeftPresentation( m );

S := GradedRing( R ); 
m := RandomMatrix( S^[ 1, 2, 2, 3, 4 ], S^[ 2, 3, 4, 4, 2, 3, 1 ] );

L := GetRidOfRowsAndColumnsWithUnits(m);
U := L[1];
UI := L[2];
N := L[3];
VI := L[4];
V := L[5];
