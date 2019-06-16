concrete LamAbc of Lam = {

lincat
  S = {s : Str } ;
  Exp = {s : Str} ;
  V = {s : Str } ;

lin

  --(\y -> (\x -> x y)) 3 (+3)
  --( ( fn x => ( fn y => x+y ) ) 2) 3;


  Var v = {s = v.s} ;
  Eval exp = exp ;
  MkV string = {s = string.s} ;
  --Lam v exp = {s = "( \" ++ v.s ++ "->" ++ exp.s ++ ")" } ;
  Lam v exp = {s = "( fn" ++ v.s ++ "=>" ++ exp.s ++ ")" } ;
  App exp1 exp2 = {s = exp1.s ++ exp2.s } ;


  --Eval : Exp -> S ;
  --Lam : V      -> Exp -> Exp ; 
  --App : Exp    -> Exp -> Exp ;
  --Var : V      -> Exp ;
  --MkV : String -> V ;

--(Var (MkV "x"))

l Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (Var (MkV "y"))))

l Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (Var (MkV "y"))))

l Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (App (Var (MkV "y")) (Var (MkV "x")))))

l Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (App (Var (MkV "y")) (Var (MkV "x")))))

so where can we make the change. in the linearization



App (App (Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (Var (MkV "y"))))) (Var (MkV "3"))) (Var (MkV "4"))

l App (App (Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (Var (MkV "y"))))) (Var (MkV "3"))) (Var (MkV "4"))

--Lam> l Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (Var (MkV "y"))))
--( func x => ( func y => x y c ) c )

--l (Lam (MkV "x") (Lam (MkV "y") App (Var (MkV "x")) (Var (MkV "y"))))

--l Lam (MkV "x") (Lam (MkV "y") (App (Var (MkV "x")) (Var (MkV "y")))

--l App (App (Lam (MkV "x") (Var (MkV "x"))) (Lam (MkV "y") (Var (MkV "y")))) (App (Lam (MkV "x1") (Var (MkV "x1"))) (Lam (MkV "y1") (Var (MkV "y1"))))

}


