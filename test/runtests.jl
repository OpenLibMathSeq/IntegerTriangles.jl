# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

# Version of: UTC 2021-04-19 10:41:10
# fe078830-a0ea-11eb-347a-2bfb86e311d4

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
Explore("SchroederB", "Inv", "AltSum",    32)
Explore("PosHalf", 32)
# *** TrianglesPlot.jl *********
# *** TrianglesTables.jl *********
header = ["A-number", "Triangle", "Form", "Function", "Sequence"]
mat = [  # Type Matrix{String}, or Array{String,2}
"A000302" "Binomial" "Std" "PolyVal3" "1, 4, 16, 64, 256, 1024, 4096, 16384" ;
"A001333" "SchroederB" "Inv" "AltSum" "1, -1, 3, -7, 17, -41, 99, -239" ;
"A006012" "SchroederL" "Inv" "AltSum" "1, -2, 6, -20, 68, -232, 792, -2704" ;
"A026302" "Motzkin" "Rev" "Central" "1, 2, 9, 44, 230, 1242, 6853, 38376" ;
"A025167" "Laguerre" "Std" "PosHalf" "1, 3, 17, 139, 1473, 19091, 291793, 5129307" ;
"A103194" "Laguerre" "Std" "TransNat0" "0, 1, 6, 39, 292, 2505, 24306, 263431" ;
"C000262" "Laguerre" "Std" "TransNat1" "1, 3, 13, 73, 501, 4051, 37633, 394353" ;
"A103194" "Lah" "Std" "TransSqrs" "0, 1, 6, 39, 292, 2505, 24306, 263431" 
]
println(typeof(mat))
S = String["A111884" "Lah" "Std" "TransAlts" "1, -1, -1, -1, 1, 19, 151, 1091"] 
mat = [mat; S]
L = String["A111884", "Lah", "Std", "TransAlts", "1, -1, -1, -1, 1, 19, 151, 1091"] 
mat = [mat; reshape(L, 1, 5)]
L = Explore("Laguerre", "Rev", "TransNat1")
mat = [mat; reshape(L, 1, 5)]
pretty_table(mat, header, alignment=[:l,:l,:l,:l,:l])
open(profilepath(), "a") do io
pretty_table(io, mat, header, alignment=[:l,:l,:l,:l,:l])
end
# *** TrianglesTraitCard.jl *********
dim = 8
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
TransTraits(BinomialTriangle)
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