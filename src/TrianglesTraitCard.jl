# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesTraitCard

using Nemo, TrianglesBase, TrianglesExamples, TrianglesUtils

export TraitCard, xTraitCard, TransTraits, AssociatedTriangles

"""
Build the trait card of one or many triangles.
"""
const ModuleTrianglesTraitCard = ""


const SEARCH = true

function TraitCard(T::ℚTri, name)

    println("WRONG TYPE! Will not process!")
    println(name)
    println()
end

"""
(SIGNATURES)
"""
function TraitCard(T::ℤTri, name, N, an=false)
    an = an && ! oeis_notinstalled()

    println("\n=================")
    println(name)
    println()
    P = Polynomial(T)
    len = max(N, min(N - 1, length(T)))
    len = len < 10 ? len : 10

    S = Flat(T); print("Triangle:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println

    R = Reverse(T)
    FR = Flat(R); print("Reverse:   ")
    an && print(GetSeqnum(FR, SEARCH), " ")
    FR[1:len] |> Println

    I = Inverse(T)
    if I != []
        FI = Flat(I); print("Inverse:   ")
        an && print(GetSeqnum(FI, SEARCH), " ")
        FI[1:len] |> Println

        RI = Reverse(I)
        RI = Flat(RI); print("RevInv:    ")
        an && print(GetSeqnum(RI, SEARCH), " ")
        RI[1:len] |> Println
    end
    
    IR = Inverse(R)
    if IR != []
        IR = Flat(IR); print("InvRev:    ")
        an && print(GetSeqnum(IR, SEARCH), " ")
        IR[1:len] |> Println
    end

    S = DiagonalTriangle(T)
    S = Flat(S);
    print("Diagonal:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println

    S = ConvolutionTriangle(T)
    S = Flat(S);
    print("Convolut:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println

    S = PolyTriangle(T)
    S = Flat(S);
    print("Poly:      ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println

    S = sum(T);       print("Sum:       ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = EvenSum(T);   print("EvenSum:   ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = OddSum(T);    print("OddSum:    ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = AltSum(T);    print("AltSum:    ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = DiagSum(T);   print("DiagSum:   ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = Central(T);   print("Central:   ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:min(len, length(S))] |> Println
    S = LeftSide(T);  print("LeftSide:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = RightSide(T); print("RightSide: ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = PosHalf(P);  print("PosHalf:   ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = NegHalf(P);  print("NegHalf:   ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println

    S = BinTrans(T); print("BinTrans:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println

    S = IBinTrans(T); print("IBinTrans: ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    
    S = Trans(T, [ZZ(n^2) for n = 0:32]); print("TransSqrs: ");
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = Trans(T, [ZZ(n) for n = 0:32]); print("TransNat0: ");
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = Trans(T, [ZZ(n) for n = 1:32]); print("TransNat1: ");
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = PolyVal2(T); print("PolyVal2:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
    S = PolyVal3(T); print("PolyVal3:  ")
    an && print(GetSeqnum(S, SEARCH), " ")
    S[1:len] |> Println
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
    dim = 32
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
    S = Flat(T); print("Flat triangle:  "); S[1:len] |> Println

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
Prints a list of traits of the triangle without Anums
and, if assoc=true, also a list of associated triangles.
"""
function TraitCard(triangle::Function, dim=8, assoc=false)
    T = triangle(dim)
    TraitCard(T, "$triangle ", dim)
    AssociatedTriangles(T, dim)
end

"""
Prints a list of traits of the triangle with Anums.
xTraitCard is slower and uses much more resources than TraitCard.
```
julia> xTraitCard(LaguerreTriangle)
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
function xTraitCard(triangle::Function)
    dim = 32
    T = triangle(dim)
    TraitCard(T, "$triangle ", dim, true)
end

# START-TEST-########################################################
using TrianglesExamples

function test()
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
end

function demo()
    xTraitCard(BinomialTriangle)
    xTraitCard(LaguerreTriangle)
    xTraitCard(LahTriangle)
    xTraitCard(CatalanTriangle)
    xTraitCard(MotzkinTriangle)
    xTraitCard(NarayanaTriangle)
    xTraitCard(SchroederBigTriangle)
    xTraitCard(JacobsthalTriangle)
    xTraitCard(FibonacciTriangle)
    xTraitCard(EulerianTriangle)
    xTraitCard(EulerianTriangle2)
    xTraitCard(FallingFactTriangle)
    xTraitCard(RisingFactTriangle)
end

function perf()
    for t in TRIANGLES
        xTraitCard(t)
    end
end

function main()
    test()
    #demo()
    #perf()
end

main()

end # module
