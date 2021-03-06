# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

# Version of: UTC 2021-05-22 22:01:34
# 82286460-bb38-11eb-1729-bfbe096b0d1d

# Do not edit this file, it is generated from the modules and will be overwritten!
# Edit the modules in the src directory and build this file with BuildTriangles.jl!

module runtests
tstdir = realpath(joinpath(dirname(@__FILE__)))
srcdir = joinpath(dirname(tstdir), "src")
tstdir ∉ LOAD_PATH && push!(LOAD_PATH, tstdir)
srcdir ∉ LOAD_PATH && push!(LOAD_PATH, srcdir)
using Nemo, Test, IntegerTriangles, PrettyTables
# *** TrianglesBase.jl *********
# *** TrianglesExamples.jl *********
@testset "Laguerre" begin
A = ℤInt[0, 1, 6, 39, 292, 2505, 24306, 263431]
@test Laguerre(0) == ℤInt[1]
@test Laguerre(3) == ℤInt[6, 18, 9, 1]
@test Laguerre(5) == ℤInt[120, 600, 600, 200, 25, 1]
@test Laguerre(6, 1) == ZZ(4320)
@test [Laguerre(7, k) for k in 0:7] == Laguerre(7)
@test Laguerre(ℤInt[0, 1, 2, 3, 4, 5]) == ZZ(2505)
@test Laguerre(ℤInt[0, 1, 4, 9, 16, 25]) == ZZ(5225)
@test LaguerreTransform([ZZ(n) for n in 0:7]) == A
@test typeof(Laguerre(3, 3))       === fmpz                   # ℤInt
@test typeof(Laguerre(5))          === Array{fmpz,1}          # ℤSeq
@test typeof(Laguerre(A))          === fmpz                   # ℤInt
@test typeof(LaguerreTriangle(5))  === Array{Array{fmpz,1},1} # ℤTri
@test typeof(LaguerreTransform(A)) === Array{fmpz,1}          # ℤSeq
end
# *** TrianglesExplorer.jl *********
TLEN = 19
Explore("SchroederB", "Inv", "AltSum",    TLEN)
# *** TrianglesPlot.jl *********
# *** TrianglesTables.jl *********
header = ["A-number", "Triangle", "Form", "Function", "Sequence"]
mat = [  # Type Matrix{String}, or Array{String,2}
"A000302" "Binomial" "Std" "PolyVal3" "1, 4, 16, 64, 256, 1024, 4096, 16384" ;
]
S = String["A111884" "Lah" "Std" "TransAlts" "1, -1, -1, -1, 1, 19, 151, 1091"] 
mat = [mat; S]
L = String["A111884", "Lah", "Std", "TransAlts", "1, -1, -1, -1, 1, 19, 151, 1091"] 
mat = [mat; reshape(L, 1, 5)]
L = Explore("Laguerre", "Rev", "TransNat1")
mat = [mat; reshape(L, 1, 5)]
pretty_table(mat, header, alignment=[:l,:l,:l,:l,:l])
mat
# *** TrianglesTraitCard.jl *********
dim = 12
TraitCard(BinomialTriangle, dim)
TraitCard(LaguerreTriangle, dim)
TraitCard(LahTriangle, dim)
TraitCard(CatalanTriangle, dim)
TraitCard(MotzkinTriangle, dim)
TraitCard(NarayanaTriangle, dim)
TraitCard(SchroederBigTriangle, dim)
TraitCard(JacobsthalTriangle, dim)
TraitCard(FibonacciTriangle, dim)
TraitCard(EulerianTriangle, dim)
TraitCard(UniTriangle, dim)
# *** TrianglesUtils.jl *********
T = LaguerreTriangle(7)
println("\nThe $Laguerre triangle in different formats:")
println("\nTriangle in standard format:\n")
Show(T)
println("\nTriangle as a nested array:\n")
Show(T, "nest")
println("\n\nTriangle in flattened format:\n")
Show(T, "flat")
println("\n\nTriangle in info format with sequence ID:\n")
Show(T, "info")
println("\nTriangle in mapped format:\n")
Show(T, "map")
end # module