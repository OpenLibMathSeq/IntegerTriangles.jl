# This file is part of IntegerTriangles.jl.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesExplorer

using Nemo, OrderedCollections
using TrianglesBase, TrianglesExamples, TrianglesUtils

export Explore, Triangles

"""
Explore integer triangles via their traits.
"""
const ModuleTrianglesExplorer = ""

const WARNING_ON_NOTFOUND = false

const Kind = ["Std", "Rev", "Inv", "RevInv", "InvRev"]

const Triangles = LittleDict{String, Function}(
    "Aitken"        => AitkenTriangle,
    "Bessel1"       => Bessel1Triangle,
    "Binomial"      => BinomialTriangle,
    "Catalan"       => CatalanTriangle,
    "DArcais"       => DArcaisTriangle,
    "Delannoy"      => DelannoyTriangle,
    "Euler"         => EulerTriangle,
    "EulerS"        => EulerSecTriangle,
    "EulerT"        => EulerTanTriangle,
    "Eulerian"      => EulerianTriangle,
    "EulerianSO2"   => EulerianSO2Triangle,
    "FallingFact"   => FallingFactTriangle,
    "Fibonacci"     => FibonacciTriangle,
    "Fine"          => FineTriangle,
    "Fubini"        => FubiniTriangle,
    "Hermite"       => HermiteTriangle,
    "Laguerre"      => LaguerreTriangle,
    "Lah"           => LahTriangle,
    "Motzkin"       => MotzkinTriangle,
    "Narayana"      => NarayanaTriangle,
    "RisingFact"    => RisingFactTriangle,
    "SchroederB"    => SchröderBTriangle,
    "SchroederL"    => SchröderLTriangle,
    "StirlingCycle" => StirlingCycleTriangle,
    "StirlingSet"   => StirlingSetTriangle,
    "Rencontres"    => RencontresTriangle,
    "Trinomial"     => TrinomialTriangle,
    "TTree"         => TTreeTriangle,
    "Uni"           => UniTriangle,
    "Worpitzky"     => WorpitzkyTriangle
)

const Traits = LittleDict{String, Function}(
    "Triangle"   => Flat,
    "Reverse"    => Reverse,
    "Inverse"    => Inverse,
    "RevInv"     => RevInv,
    "InvRev"     => InvRev,
    "DiagTri"    => DiagTri,
    "PolyTri"    => PolyTri,
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
    "BinConv"    => BinomialTransform,
    "IBinConv"   => IBinomialTransform,
    "TransSqrs"  => TransSqrs,
    "TransNat0"  => TransNat0,
    "TransNat1"  => TransNat1
)

function Show(io, name, kind, trait, seq, savetofile=false)
    seq == [] && return []
    if typeof(seq) === ℤTri 
        seq = Flat(seq)
    end
    anum = GetSeqnum(seq, WARNING_ON_NOTFOUND)
    if savetofile
        print(".")
        print(io, anum, ",", name, ",", kind, ",", trait, ",")
        Println(io, SeqToString(seq, 10)) # seq[1:min(10, end)])
    else
        print(anum, " ", name, " ", kind, " ", trait, " ")
        Println(IOContext(stdout), SeqToString(seq, 10)) # seq[1:min(10, end)])
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

const LEN = 32

"""
(SIGNATURES)
"""
function Explore(triangle, kind, trait, dim)
    T = TriangleVariant(Triangles[triangle], dim, kind)
    seq = Traits[trait](T)
    Show(stdout, triangle, kind, trait, seq)
end


function Explore(T::ℤTri, trait::Function)
    seq = trait(T)
    if seq == [] || seq === nothing
        return []
    end
    typeof(seq) === ℤTri && (seq = Flat(seq))
    println("$trait ")
    anum = GetSeqnumUri(seq)
    anum === nothing && (anum = "nothing")
    seqstr = string(seq[1:min(10, end)])[max(0,11):max(0,end-1)]
    String["$trait ", anum, seqstr]
end

"""

"""
function Explore(triangle, kind, trait)
    dim = 32
    T = TriangleVariant(Triangles[triangle], dim, kind)
    seq = Traits[trait](T)
    anum = GetSeqnum(seq)
    anum === nothing && (anum = "nothing")
    seqstr = string(seq[1:min(10, end)])[max(0,11):max(0,end-1)]
    String[anum, triangle, kind, trait, seqstr]
end

function Explore(trait::String, dim::Int)
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
    @warn "This will take several minutes and produce the file 'BIGLIST.csv' in the data directory."

    path = profilepath("BIGLIST")
    rm(path; force=true)
    open(path, "w") do io
        println(io, "Anumber,Triangle,Type,Trait,Sequence")
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


end # module
