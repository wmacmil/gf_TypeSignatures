concrete TypeEng of Typez = open Prelude in {

lincat
  Name = {s : Str} ;
  TypJdg = {s : Str ; cls : Str ; tys : Str} ;
  Clas =  Str ;
  S = Str ;
  TypVar = Str ;
  Typ = {s : Str ;
         c : Bool ;
         cls : Str 
  } ;

lin

  --further work is needed to distinguish morphologically between list of lists of integers, e.g. how to determine if there is a kind of recursively generated data type 
  --also, need to morphologically add s to a word instead of ++ "s"
  --e.g. need to morphologically distinguish between a type which depends on another type or not (vs a primitive type)
  --see the following example
  --Foo has type list of pair of integer s and integer s s
  --Foo :: [ ( Int , Int ) ]
  --should really be 
  --Foo has type list of pair(+s) of integer(-_)s and integer(-_)s (-s)
  --where the (-_) is a simple morphological variation
  --and the (+s) should be indicative of the dependent, or nonprimitive types

  AInt = {s = "integer" } ** {cls = ""} ** {c = False }  ;
  AString = {s = "string" } ** {cls = ""} ** {c = False } ;
  AList ty = {s = "list of" ++ ty.s ++ "s" } ** {cls = ty.cls} ** {c = False };
  APair ty1 ty2 = { s = "pair of" ++ ty1.s ++ "s and" ++ ty2.s ++ "s" } 
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
  AArr ty1 ty2 = { s = ty1.s ++ "to" ++ ty2.s } 
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
  TypSig nm ty = {s = nm.s ++ "has type" ; cls = case ty.c of {
      True =>  "in a context where the typeclass of" ++ ty.cls ;
      False => ""
      } ;
    tys = ty.s} ;

  Eval tj = tj.s ++ tj.tys ++ tj.cls ;
  MkName st = { s = st.s } ;

  Xx = "x" ;
  Yy = "y" ;
  Zz = "z" ;

  AMkTyp st cl = { s = st }  ** {cls = st ++ "is" ++ cl } ** {c = True } ;

  Monad = "Monad" ;
  Num = "Num" ;

}
