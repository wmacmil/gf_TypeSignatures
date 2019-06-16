


--question about asssociativity of type signatures


--Type : Name -> Signature -> S
-- TypeSig : Name -> Signature -> Exp

--adding A for abstract

AMkType : String -> Type -- x

AInt : Type
AString : Type
AList : Type -> Type
APair : Type -> Type -> Type
AArr : Type -> Type -> Type

TypeSig : Name -> Type -> TypJdg

Name = {s : Str} ;
Type = {s : Str} ;
TypJdg = {s : Str} ;


AMkType : String -> Type -- x
AMkType st ty = { s = st } ;

AInt : Type

AInt = {s = "Int" } ;
AString = {s = "String" } ;
AList ty = {s = "[" ++ ty.s ++ "]" } ;
APair ty1 ty2 = {s = "(" ++ ty1.s ++ "," ++ ty2.s ++ ")" } ;

AArr ty1 ty2 = {s = "(" ++ ty1.s ++ "," ++ ty2.s ++ ")" } ;

AList : Type -> Type
APair : Type -> Type -> Type
AArr : Type -> Type -> Type

TypeSig : Name -> Type -> TypJdg





String -> Name



  Int  - integer

  String - string

  [x]  - list of xs

  x -> y  - function from xs to ys

  (x,y)  - pair of an x and a y

  Maybe x  - optional x

  -- plus a couple more, up to you to choose

  Either x




