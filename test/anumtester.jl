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
#Inspect("Laguerre", "Std", "Middle", TLEN)
#Inspect("Laguerre", "Std", "PolyTri", TLEN)
#TraitCard(LaguerreTriangle, 9)

# -------------------------
#T = LaguerreTriangle(8)
#P = PolyTriangle(T)
#Println.(P)      # as a triangle
#Println(Flat(P)) # as a sequence
#A = PolyArray(T)
#Println.(A)      # as an array
#Traits(P, "LaguerrePoly", 16, true)
# -------------------------
#Explore("Laguerre", "Std", "PolyValn", TLEN)

#Inspect("Lah", "Std", "BinConv", 8)

#Bin(A::ℤTri) = [sum(Binomial(n, k) * A[n+1][k+1] for k = 0:n) for n in 0:length(A)-1]
#Println(Bin(LahTriangle(8)))

#Bin(A::Function, len) = [sum(Binomial(n, k) * A(n, k) for k = 0:n) for n in 0:len-1]
#Println(Bin(LahNumbers, 8))

#Inspect("Lah", "Std", "IBinConv", 8)

#IBin(A::ℤTri) = [sum((-1)^(n-k)*Binomial(n, k) * A[n+1][k+1] for k = 0:n) for n in 0:length(A)-1]
#Println(IBin(LahTriangle(8)))

#IBin(A::Function, len) = [sum((-1)^(n-k)*Binomial(n, k) * A(n, k) for k = 0:n) for n in 0:len-1]
#Println(IBin(LahNumbers, 8))

#Inspect("Lah", "Std", "Middle", 28)
#Inspect("StirlingCycle", "Std", "DiagSum", 16)

#Inspect("Eulerian", "Std", "TransSqrs", 42)

#Inspect("Fubini", "Std", "PolyTri", 19, true)

# Inspect("Lah", "Std", "RevInv", 19, true)
# Inspect("Uni", "Std", "TransNat0", 19, true)

TraitCard(UniTriangle, 32)

end # module
