suslinLemma = method()
suslinLemma(RingElement,RingElement,RingElement,Ideal) := (f,g,var,I) -> (
     local F; local lcg; local M; local R; local tempM;
     
     if degVar(f,var) <= degVar(g,var) then error "Error: Expected the first entry to have degree strictly larger than the second entry.";
     if not isLocalUnit(leadCoeffVarFF(f,var),I) then error "Error: Expected the leading coefficient of the first entry to be a unit when localized at the given ideal.";
     
     R = ring I;
     F = matrix{{sub(f,frac R),sub(g,frac R)}};
     lcg = leadCoeffVarFF(F_(0,1),var);
     -- Make F_(0,0) monic if it wasn't already.
     M = matrix{{1/leadCoeffVarFF(F_(0,0),var),0},{0,1}};
     F = F*M;
     
     -- Keep creating syzygies on the leading terms of f and g.
     -- Eventually, since g contains a unit coefficient, this process
     -- will terminate with the leading coefficient being a unit in the
     -- localization.
     while not isLocalUnit(lcg,I) do (
	  tempM = matrix{{1,-lcg},{0,var^(degVar(F_(0,0),var)-degVar(F_(0,1),var))}};
	  F = F*tempM;
	  M = M*tempM;
	  lcg = leadCoeffVarFF(F_(0,1),var);
     );
     -- Now that the leading coefficient of F_(0,1) is a unit in the
     -- localization, make F_(0,1) monic and return it.
     
     tempM = matrix{{1,0},{0,1/lcg}};
     return ((1/lcg)*F_(0,1),(M*tempM)_{1});
)

