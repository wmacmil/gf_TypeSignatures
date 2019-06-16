abstract Typez = { 

cat 
  Type ; TypJdg ; Name ; S ;

--adding A for abstract
--question about asssociativity of type signatures
--Type : Name -> Signature -> S
-- TypeSig : Name -> Signature -> Exp

fun
  AMkType : String -> Type ;  -- x
  AInt : Type ;
  AString : Type ;
  AList : Type -> Type ;
  APair : Type -> Type -> Type ;
  AArr : Type -> Type -> Type ;
  TypeSig : Name -> Type -> TypJdg ;
  Eval : TypJdg -> S;


--  Int  - integer
--  String - string
--  [x]  - list of xs
--  x -> y  - function from xs to ys
--  (x,y)  - pair of an x and a y
--  Maybe x  - optional x
--  -- plus a couple more, up to you to choose
--  Either x
}
