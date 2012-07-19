LoadPackage( "Orbifolds" );
R := HomalgFieldOfRationalsInDefaultCAS( ) * "x,y,z";
G := [
            [0,1,0],
            [-1,0,0],
            [0,0,-1]
];

G := Group(G);
B := GroupInvariants( G, R );

gen_ideal := B[1];
