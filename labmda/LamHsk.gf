concrete LamHsk of Lam = {

lincat
  S = {s : Str } ;
  Exp = {s : Str} ;
  V = {s : Str } ;

lin
  Var v = {s = v.s} ;
  Eval exp = exp ;
  MkV string = {s = string.s} ;
  Lam v exp = {s = "lambda" ++ v.s ++ "." ++ exp.s } ;
  App exp1 exp2 = {s = exp1.s ++ "(" ++ exp2.s ++ ")" } ;


  --Eval : Exp -> S ;
  --Lam : V      -> Exp -> Exp ; 
  --App : Exp    -> Exp -> Exp ;
  --Var : V      -> Exp ;
  --MkV : String -> V ;

l App (App (Lam (MkV "x") (Var (MkV "x"))) (Lam (MkV "y") (Var (MkV "y")))) (App (Lam (MkV "x1") (Var (MkV "x1"))) (Lam (MkV "y1") (Var (MkV "y1"))))

}


