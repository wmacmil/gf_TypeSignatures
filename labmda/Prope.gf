
abstract Prope = {

cat 
  Prop ; 
  Ind ; 
  Var ;
  S ;
  St ;



fun
  And, Or, If : Prop -> Prop -> Prop;
  Not : Prop -> Prop;
  Forall, Exist : Var -> Prop -> Prop;
  IVar : Var  -> Ind;
  VStr : St -> Var;
  Eval : Prop -> S;

  IInt : Int -> Ind ;
  Add, Mul : Ind -> Ind -> Ind ;
  Nat, Even, Odd : Ind -> Prop ;
  Equal          : Ind -> Ind -> Prop ;

}
