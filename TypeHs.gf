concrete TypeHs of Typez = {

lincat
  Name = {s : Str} ;
  Typ = {s : Str} ;
  TypJdg = {s : Str} ;
  S = Str ;

lin
  AMkTyp st = { s = st.s } ;
  AInt = {s = "Int" } ;
  AString = {s = "String" } ;
  AList ty = {s = "[" ++ ty.s ++ "]" } ;
  APair ty1 ty2 = {s = "(" ++ ty1.s ++ "," ++ ty2.s ++ ")" } ;
  AArr ty1 ty2 = {s = "(" ++ ty1.s ++ "->" ++ ty2.s ++ ")" } ;
  TypSig nm ty = {s = nm.s ++ "::" ++ ty.s} ;
  Eval tj = tj.s ;
  MkName st = { s = st.s } ;



}
