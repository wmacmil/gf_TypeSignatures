abstract Typez = { 

cat 
  Typ ; TypJdg ; TypVar ; Name ; Clas ; S ;

--adding A for abstract
--question about asssociativity of type signatures
--Typ : Name -> Signature -> S
-- TypSig : Name -> Signature -> Exp

fun
  MkName : String -> Name ;
  AInt : Typ ;
  AString : Typ ;
  AList : Typ -> Typ ;
  APair : Typ -> Typ -> Typ ;
  AArr : Typ -> Typ -> Typ ;
  TypSig : Name -> Typ -> TypJdg ;
  Eval : TypJdg -> S;

  --class added
  --AMkTyp : String -> Clas -> Typ ;  -- x
  AMkTyp : TypVar -> Clas -> Typ ;  -- x
  Xx : TypVar ;
  Yy : TypVar ;
  Zz : TypVar ;


  Monad : Clas ;
  Num : Clas ;



 --Monad m =>
 --let m have typeclass Monad in 
 --where m is of typeclass Monad
 --variable/function x has type 

  --Bind : Name
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
