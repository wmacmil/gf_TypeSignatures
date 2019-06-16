concrete TypeHs of Typez = open Prelude in {

--param ClasP = Poly | Rest

----how to do a list of Strings?
--oper mkTyp : ClasP -> String ->
--oper mkTyp = {s = 

lincat
  Name = {s : Str} ;
  --Typ = {s : Str} ;
  TypJdg = {s : Str ; cls : Str ; tys : Str} ;
  Clas =  Str ;
  S = Str ;

  --so does type need class? param
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
                    ** {cls = ty1.cls ++ "," ++ ty2.cls } 
                    ** {c = case <ty1.c,ty2.c> of {
                      <False,False> => False ;
                      <_,_> => True
                        --<True,False> => 
                    }
                  } ;
  AArr ty1 ty2 = { s = "(" ++ ty1.s ++ "->" ++ ty2.s ++ ")" } 
                   ** {cls = ty1.cls ++ ","  ++ ty2.cls } 
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

  AMkTyp st cl = { s = st.s }  ** {cls = cl ++ st.s } ** {c = True } ;

  Monad = "Monad" ;
  Num = "Num" ;

}
