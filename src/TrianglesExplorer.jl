# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesExplorer

using Nemo, OrderedCollections
using TrianglesBase, TrianglesExamples, TrianglesUtils

export Explore

const WARNING_ON_NOTFOUND = false

const Kind = ["Std", "Rev", "Inv", "RevInv", "InvRev"]

const Triangles = LittleDict{String, Function}(
    "Binomial"      => BinomialTriangle,
    "Catalan"       => CatalanTriangle,
    "Eulerian"      => EulerianTriangle,
    "Fibonacci"     => FibonacciTriangle,
    "Laguerre"      => LaguerreTriangle,
    "Lah"           => LahTriangle,
    "Motzkin"       => MotzkinTriangle,
    "Narayana"      => NarayanaTriangle,
    "SchroederB"    => SchröderBTriangle,
    "SchroederL"    => SchröderLTriangle,
    "StirlingCycle" => StirlingCycleTriangle,
    "StirlingSet"   => StirlingSetTriangle,
    "PermCoeffs"    => T008279
)

const Traits = LittleDict{String, Function}(
    "Triangle"   => Flat,
    "Reverse"    => Reverse,
    "Inverse"    => Inverse,
    "RevInv"     => RevInv,
    "InvRev"     => InvRev,
    "Sum"        => sum,
    "EvenSum"    => EvenSum,
    "OddSum"     => OddSum,
    "AltSum"     => AltSum,
    "DiagSum"    => DiagSum,
    "Middle"     => Middle,
    "Central"    => Central,
    "LeftSide"   => LeftSide,
    "RightSide"  => RightSide,
    "PosHalf"    => PosHalf,
    "NegHalf"    => NegHalf,
    "PolyVal2"   => PolyVal2,
    "PolyVal3"   => PolyVal3,
    "TransUnos"  => TransUnos,
    "TransAlts"  => TransAlts,
    "TransSqrs"  => TransSqrs,
    "TransNat0"  => TransNat0,
    "TransNat1"  => TransNat1
)

function Show(io, name, kind, trait, seq, savetofile=false)
    anum = GetSeqnum(seq, WARNING_ON_NOTFOUND)
    if savetofile
        print(".")
        print(io, anum, " ", name, " ", kind, " ", trait, " ")
        Println(io, seq[1:min(8, end)])
    else
        print(anum, " ", name, " ", kind, " ", trait, " ")
        Println(seq[1:min(8, end)])
    end
end

function TriangleVariant(Tri, dim, kind="Std")
    if ! (kind in Kind)
        @warn("No valid kind!")
        return []
    end

    M = Tri(dim)
    kind == "Std" && return M
    kind == "Rev" && return reverse.(M)
    kind == "InvRev" && (M = reverse.(M))
    invM = InverseTriangle(M)
    (kind == "Inv" || kind == "InvRev"
        || invM == []) && return invM
    return reverse.(invM)
end

function Explore(triangle, kind, trait, dim)
    T = TriangleVariant(Triangles[triangle], dim, kind)
    seq = Traits[trait](T)
    Show(stdout, triangle, kind, trait, seq)
end

const LEN = 32

function Explore(triangle, kind, trait)
    dim = 32
    T = TriangleVariant(Triangles[triangle], dim, kind)
    seq = Traits[trait](T)
    anum = GetSeqnum(seq)
    anum === nothing && (anum = "nothing")
    seqstr = string(seq[1:min(8, end)])[max(0,11):max(0,end-1)]
    String[anum, triangle, kind, trait, seqstr]
end

function Explore(trait, dim)
    for (name, triangle) in Triangles
        for kind in Kind
            T = TriangleVariant(triangle, dim, kind)
            if T != []
                seq = Traits[trait](T)
                Show(stdout, name, kind, trait, seq)
            end
        end
    end
end

# The BIG LIST goes to data/profile.txt.
function Explore(savetofile::Bool)
    @warn "This will take several minutes and produce the file 'profile.txt' in the data directory."

    open(profilepath(), "a") do io
        for (name, triangle) in Triangles
            for kind in Kind
                T = TriangleVariant(triangle, LEN, kind)
                if T != []
                    for (trait, f) in Traits
                        Show(io, name, kind, trait, f(T), savetofile)
                    end
                end
            end
        end
    end
end


# START-TEST-##############################################

function test()
    Explore("SchroederB", "Inv", "AltSum",    32)
    Explore("PosHalf", 32)
end

function demo()
    Explore("Binomial",   "Std", "PolyVal3",  32)
    Explore("SchroederB", "Inv", "AltSum",    32)
    Explore("SchroederL", "Inv", "AltSum",    32)
    Explore("Motzkin",    "Rev", "Central",   32)
    Explore("Laguerre",   "Std", "PosHalf",   32)
    Explore("Laguerre",   "Std", "TransNat0", 32)
    Explore("Laguerre",   "Std", "TransNat1", 32)
    Explore("Lah",        "Std", "TransSqrs", 32)
    Explore("Lah",        "Std", "TransAlts", 32)
    println()
end

function perf()
    Explore(true)
end

function main()
    #test()
    demo()
    #perf()
end

main()

# "1,5,7,1,23,43,17,95,241,197,329,1249,",
# 1,3,12,60,360,2520,20160,181440,1814400,19958400,
# "1,2,2,0,0,0,0,0,0,0,0,0,",
# 1,1,3,6,15,36,91,232,603,1585,4213,11298,",
# "0,1,2,2,2,3,4,4,4,5,6,6,",

end # module
