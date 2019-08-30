concrete TypeHs of Typez = open Prelude in {

--param ClasP = Poly | Rest

----how to do a list of Strings?
--oper mkTyp : ClasP -> String ->
--oper mkTyp = {s = 
--make it optional in general

lincat
  Name = {s : Str} ;
  --Typ = {s : Str} ;
  TypJdg = {s : Str ; cls : Str ; tys : Str} ;
  Clas =  Str ;
  S = Str ;
  TypVar = Str ;
  Typ = {s : Str ;
         c : Bool ;
         cls : Str 
  } ;

  --maybe define a makeTyp function
  --need to account for the existence or emptiness of a givene cls param because if empty we don't want any indication of a context


lin
  AInt = {s = "Int" } ** {cls = ""} ** {c = False }  ;
  AString = {s = "String" } ** {cls = ""} ** {c = False } ;
  AList ty = {s = "[" ++ ty.s ++ "]" } ** {cls = ty.cls} ** {c = False };
  APair ty1 ty2 = { s = "(" ++ ty1.s ++ "," ++ ty2.s ++ ")" } 
                   ** {cls = ty1.cls ++ 
                     case <ty1.c,ty2.c> of {
                       <True,True> =>  "," ;
                       <_,_> => ""
                       }
                     ++ ty2.cls } 
                    --** {cls = ty1.cls ++ "," ++ ty2.cls } 
                    ** {c = case <ty1.c,ty2.c> of {
                      <False,False> => False ;
                      <_,_> => True
                        --<True,False> => 
                    }
                  } ;
  AArr ty1 ty2 = { s = "(" ++ ty1.s ++ "->" ++ ty2.s ++ ")" } 
                   --** {cls = ty1.cls ++ ","  ++ ty2.cls } 
                   ** {cls = ty1.cls ++ 
                     case <ty1.c,ty2.c> of {
                       <True,True> =>  "," ;
                       <_,_> => ""
                       }
                     ++ ty2.cls } 
                   ** {c = case <ty1.c,ty2.c> of {
                     <False,False> => False ;
                     <_,_> => True
                     }
                   } ;
  --TypSig nm ty = {s = nm.s ++ "::" ++ ty.s} ;
  TypSig nm ty = {s = nm.s ++ "::" ; cls = case ty.c of {
      True => "(" ++ ty.cls ++ ")" ++ "=>" ;
      False => ""
      } ;
    tys = ty.s} ;

  Eval tj = tj.s ++ tj.cls ++ tj.tys ;
  MkName st = { s = st.s } ;

  Xx = "x" ;
  Yy = "y" ;
  Zz = "z" ;

  AMkTyp st cl = { s = st }  ** {cls = cl ++ st } ** {c = True } ;

  Monad = "Monad" ;
  Num = "Num" ;


--https://docs.google.com/document/d/1x7omuxKrtztWIFjs95hCI0327ahYzWZrMgOFaXKjmF0/edit

  --Typez> p "f :: ( Monad x , , , ) => ( ( x -> String ) -> ( String -> String ) )"
  --Eval (TypSig (MkName "f") (AArr (AArr (AMkTyp Xx Monad) AString) (AArr AString AString)))
--  ypez> p "f :: ( Monad x , Num x , , ) => ( ( x -> x ) -> ( String -> Strin
--  g ) )"
--  Eval (TypSig (MkName "f") (AArr (AArr (AMkTyp Xx Monad) (AMkTyp Xx Num)) (AArr AString AString)))



}
