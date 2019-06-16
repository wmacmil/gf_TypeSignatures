abstract LamdBr = {

cat
  S ;
  Exp ;
  V ;

fun
  Eval : Exp -> S ;
  Lam : Exp -> Exp ; 
  App : Exp    -> Exp -> Exp ;
  Var : V      -> Exp ;
  MkV : Int -> V ;

}

