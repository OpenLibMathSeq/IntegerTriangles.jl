# This file is part of IntegerTriangles.jl.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesTraitCard

using Nemo, TrianglesBase, TrianglesExamples, TrianglesUtils

export TraitCard, TransTraits, Traits, AssociatedTriangles, AllTraitCards

"""
Build the trait card of one or many triangles with Anums.
```
julia> TraitCard(LaguerreTriangle)
Triangle:  A021009 [1, 1, 1, 2, 4, 1, 6, 18, 9, 1]
Reverse:   A021010 [1, 1, 1, 1, 4, 2, 1, 9, 18, 6]
Inverse:   A021009 [1, -1, 1, 2, -4, 1, -6, 18, -9, 1]
RevInv:    A021010 [1, 1, -1, 1, -4, 2, 1, -9, 18, -6]
Diagonal:  A084950 [1, 1, 2, 1, 6, 4, 24, 18, 1, 120]
Sum:       A002720 [1, 2, 7, 34, 209, 1546, 13327, 130922, 1441729, 17572114]
EvenSum:   A331325 [1, 1, 3, 15, 97, 745, 6571, 65359, 723969, 8842257]
OddSum:    A331326 [0, 1, 4, 19, 112, 801, 6756, 65563, 717760, 8729857]
AltSum:    A009940 [1, 0, -1, -4, -15, -56, -185, -204, 6209, 112400]
DiagSum:   C001040 [1, 1, 3, 10, 43, 225, 1393, 9976, 81201, 740785]
Central:   A295383 [1, 4, 72, 2400, 117600, 7620480, 614718720, 59364264960]
LeftSide:  A000142 [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
RightSide: A000012 [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
PosHalf:   A025167 [1, 3, 17, 139, 1473, 19091, 291793, 5129307, 101817089]
NegHalf:   A025166 [1, -1, 1, 7, -127, 1711, -23231, 334391, -5144063, 84149983]
TransUnos: A002720 [1, 2, 7, 34, 209, 1546, 13327, 130922, 1441729, 17572114]
TransSqrs: A105219 [0, 1, 8, 63, 544, 5225, 55656, 653023, 8379008, 116780049]
TransNat0: A103194 [0, 1, 6, 39, 292, 2505, 24306, 263431, 3154824, 41368977]
TransNat1: C000262 [1, 3, 13, 73, 501, 4051, 37633, 394353, 4596553, 58941091]
PolyVal2:  A087912 [1, 3, 14, 86, 648, 5752, 58576, 671568, 8546432, 119401856]
PolyVal3:  A277382 [1, 4, 23, 168, 1473, 14988, 173007, 2228544, 31636449]
```
"""
const ModuleTrianglesTraitCard = ""


const SEARCHONLINE = false # true

function TraitCard(T::ℚTri, name)
    @warn "WRONG TYPE! Will not process!"
end

"""
(SIGNATURES)
"""
function Traits(T::ℤTri, name, N=10, an=false)
    an = an && ! oeis_notinstalled()
    sep = " "

    println("\n=================")
    println(name)
    println()
    len = max(N, min(N - 1, length(T)))
    len = len < 10 ? len : 72
   
    S = Flat(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "Triangle", sep, SeqToFixlenString(S, len))

    R = Reverse(T); S = Flat(R)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "Reverse", sep, SeqToFixlenString(S, len))

    I = Inverse(T)
    if I != []

        S = Flat(I);
        anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
        println(anum, sep, name, sep, "Inverse", sep, SeqToFixlenString(S, len))

        RI = Reverse(I); S = Flat(RI);
        anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
        println(anum, sep, name, sep, "RevInv", sep, SeqToFixlenString(S, len))
    end

    IR = Inverse(R)
    if IR != []

        S = Flat(IR);
        anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
        println(anum, sep, name, sep, "InvRev", sep, SeqToFixlenString(S, len))
    end

    S = DiagonalTriangle(T); S = Flat(S)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "DiagTri", sep, SeqToFixlenString(S, len))

    S = ConvolutionTriangle(T); S = Flat(S)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "ConvTri", sep, SeqToFixlenString(S, len))

    S = PolyTriangle(T); S = Flat(S)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "PolyTri", sep, SeqToFixlenString(S, len))

    S = sum(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "Sum", sep, SeqToFixlenString(S, len))

    S = EvenSum(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "EvenSum", sep, SeqToFixlenString(S, len))

    S = OddSum(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "OddSum", sep, SeqToFixlenString(S, len))

    S = AltSum(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "AltSum", sep, SeqToFixlenString(S, len))

    S = DiagSum(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "DiagSum", sep, SeqToFixlenString(S, len))

    S = Middle(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "Middle", sep, SeqToFixlenString(S, len))

    S = Central(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "Central", sep, SeqToFixlenString(S, len))

    S = LeftSide(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "LeftSide", sep, SeqToFixlenString(S, len))

    S = RightSide(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "RightSide", sep, SeqToFixlenString(S, len))

    # --------
    P = Polynomial(T)
    # --------

    S = PosHalf(P)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "PosHalf", sep, SeqToFixlenString(S, len))

    S = NegHalf(P)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "NegHalf", sep, SeqToFixlenString(S, len))

    S = BinConv(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "BinConv", sep, SeqToFixlenString(S, len))

    S = IBinConv(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "IBinConv", sep, SeqToFixlenString(S, len))
    
    S = Trans(T, [ZZ(n^2) for n = 0:19])
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "TransSqrs", sep, SeqToFixlenString(S, len))

    S = Trans(T, [ZZ(n) for n = 0:19])
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "TransNat0", sep, SeqToFixlenString(S, len))

    S = Trans(T, [ZZ(n) for n = 1:19])
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "TransNat1", sep, SeqToFixlenString(S, len))

    S = PolyVal2(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "PolyVal2", sep, SeqToFixlenString(S, len))

    S = PolyVal3(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "PolyVal3", sep, SeqToFixlenString(S, len))

    S = PolyValn(T)
    anum = an ? GetSeqnum(S, SEARCHONLINE) : ""
    println(anum, sep, name, sep, "PolyValn", sep, SeqToFixlenString(S, len))
end

"""
Print the standard traits generated by linear transformation.
```
julia> TransTraits(BinomialTriangle)
BinomialTriangle
TransSqrs: A001788 [0, 1, 6, 24, 80, 240, 672, 1792, 4608, 11520]
TransNat0: A001787 [0, 1, 4, 12, 32, 80, 192, 448, 1024, 2304]
TransNat1: A001792 [1, 3, 8, 20, 48, 112, 256, 576, 1280, 2816]
```
"""
function TransTraits(triangle::Function)
    dim = 19
    T = triangle(dim)
    println("$triangle ")
    len = min(10, min(dim - 1, length(T)))

    S = Trans(T, [ZZ(1) for n = 0:dim]); anum = GetSeqnum(S, false)
    print("TransUnos: ", anum, " "); S[1:len] |> Println
    S = Trans(T, [ZZ((-1)^n) for n = 0:dim]); anum = GetSeqnum(S, false)
    print("TransAlts: ", anum, " "); S[1:len] |> Println
    S = Trans(T, [ZZ(n^2) for n = 0:dim]);    anum = GetSeqnum(S, false)
    print("TransSqrs: ", anum, " "); S[1:len] |> Println
    S = Trans(T, [ZZ(n) for n = 0:dim]);      anum = GetSeqnum(S, false)
    print("TransNat0: ", anum, " "); S[1:len] |> Println
    S = Trans(T, [ZZ(n) for n = 1:dim]);      anum = GetSeqnum(S, false)
    print("TransNat1: ", anum, " "); S[1:len] |> Println
    println()
end

"""
(SIGNATURES)
"""
function AssociatedTriangles(T::ℤTri, N)

    len = max(N, min(N - 1, length(T)))

    println("\nTriangle:\n")
    for row in T[1:len] Println(row) end
    println()
    print("Flat triangle:  ");
    S = Flat(T);
    S[1:len] |> Println

    println("\nInverse triangle:\n")
    S = InverseTriangle(T)
    if S != []
        for row in S[1:len] Println(row) end
        println()
        S = Flat(S); print("Inverse:  "); S[1:len] |> Println
    end

    println("\nDiagonal triangle:\n")
    S = DiagonalTriangle(T)
    Println.(S[1:len])
    println()
    S = Flat(S); print("Diagonal:  "); S[1:len] |> Println

    println("\nPolynomial values, array:\n")
    Println.(PolyArray(T))

    println("\nPolynomial values, triangle:\n")
    S = PolyTriangle(T)
    Println.(S[1:len])
    println()
    S = Flat(S); print("PolyVal:  "); S[1:len] |> Println
end

"""
Prints a list of traits of the triangle with Anums.
"""
function TraitCard(triangle::Function)
    dim = 19
    T = triangle(dim)
    name = "$triangle"
    c = findfirst("Triangle", name)
    Traits(T, name[1:c[1]-1], dim, true)
end

"""
Prints a list of traits of the triangle without Anums
and, if assoc=true, also a list of associated triangles.
"""
function TraitCard(triangle::Function, dim, assoc=false)
    T = triangle(dim)
    name = "$triangle"
    c = findfirst("Triangle", name)
    Traits(T, name[1:c[1]-1], dim)
    AssociatedTriangles(T, dim)
end

function AllTraitCards()
    for T in TRIANGLES
        TraitCard(T)
    end
end

# START-TEST-########################################################
using TrianglesExamples

function test()
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
end

function demo()
    TransTraits(BinomialTriangle)
    TraitCard(FubiniTriangle)
end

function perf()
    #AllTraitCards()
end

function main()
    test()
    demo()
    perf()
end

main()

end # module
