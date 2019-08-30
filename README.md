# gf_TypeSignatures

I renamed Type.hs to Typez to avoid compiler name conflicts.  I'm trying to work on typeclasses, but am uncertain how to deal with lists of input typeclasses for a single type variable i.e. (Monad x, Eq x) x -> Str

Additionally, in the lambda folder I have implemented both an untyped lambda calc and am confused as I can't create a De brujn and classical untyped calculus from the same abstract file (I had to create to similair but different abstract sytax's).  Is this possible?  

further work is needed to distinguish morphologically between list of lists of integers, e.g. how to determine if there is a kind of recursively generated data type 
also, need to morphologically add s to a word instead of ++ "s"
e.g. need to morphologically distinguish between a type which depends on another type or not (vs a primitive type)
see the following example
Foo has type list of pair of integer s and integer s s
Foo :: [ ( Int , Int ) ]
should really be 
Foo has type list of pair(+s) of integer(-_)s and integer(-_)s (-s)
where the (-_) is a simple morphological variation
and the (+s) should be indicative of the dependent, or nonprimitive types





