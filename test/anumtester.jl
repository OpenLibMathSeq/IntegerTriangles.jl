# This file is part of IntegerTriangles.jl.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module AnumTester

using IntegerTriangles

TLEN = 19
#Inspect("Aitken", "Std", "DiagTri", TLEN)
#Inspect("Aitken", "Std", "PolyTri", TLEN)
#Inspect("Aitken", "Std", "EvenSum", TLEN)
#Inspect("Aitken", "Std", "OddSum", TLEN)
#Inspect("Aitken", "Std", "AltSum", TLEN)

#Inspect("Laguerre", "Std", "IBinConv", TLEN)
Inspect("Laguerre", "Std", "Middle", TLEN)

end # module
