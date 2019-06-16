abstract Lam = {

cat
  S ;
  Exp ;
  V ;

fun
  Eval : Exp -> S ;
  Lam : V      -> Exp -> Exp ; 
  App : Exp    -> Exp -> Exp ;
  Var : V      -> Exp ;
  MkV : String -> V ;

}

