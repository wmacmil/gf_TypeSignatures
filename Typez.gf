abstract Typez = { 

cat 
  Typ ; TypJdg ; Name ; S ;

--adding A for abstract
--question about asssociativity of type signatures
--Typ : Name -> Signature -> S
-- TypSig : Name -> Signature -> Exp

fun
  AMkTyp : String -> Typ ;  -- x
  AInt : Typ ;
  AString : Typ ;
  AList : Typ -> Typ ;
  APair : Typ -> Typ -> Typ ;
  AArr : Typ -> Typ -> Typ ;
  TypSig : Name -> Typ -> TypJdg ;
  Eval : TypJdg -> S;

  MkName : String -> Name ;

  --F : Name ;
  --G : Name ;
  --H : Name ;


--AArr (AList AInt) (AArr (AList AInt) (AArr (AMkTyp "Foo") (AMkTyp "Foo")))
--( [ Int ] -> ( [ Int ] -> ( Foo -> Foo ) ) )
--  Int  - integer
--  String - string
--  [x]  - list of xs
--  x -> y  - function from xs to ys
--  (x,y)  - pair of an x and a y
--  Maybe x  - optional x
--  -- plus a couple more, up to you to choose
--  Either x
}
