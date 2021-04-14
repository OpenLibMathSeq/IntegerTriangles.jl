# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TriangleTraitCard

using Nemo, TrianglesBase

export TraitCard

function TraitCard(T::ℚTri, name)

    println("WRONG TYPE! Will not process!")
    println(name)
    println()
end

function TraitCard(T::ℤTri, name, N)
    println("\n=================")
    println(name)
    println()
    P = Polynomial(T)
    PA = PolyArray(T)
    len = max(N, min(N - 1, length(T)))

    S = Flat(T);      print("Triangle:  "); S[1:len] |> Println
    S = sum(T);       print("Sum:       "); S[1:len] |> Println
    S = EvenSum(T);   print("EvenSum:   "); S[1:len] |> Println
    S = OddSum(T);    print("OddSum:    "); S[1:len] |> Println
    S = AltSum(T);    print("AltSum:    "); S[1:len] |> Println
    S = DiagSum(T);   print("DiagSum:   "); S[1:len] |> Println
    S = Central(T);   print("Central:   "); S[1:min(len, length(S))] |> Println
    S = LeftSide(T);  print("LeftSide:  "); S[1:len] |> Println
    S = RightSide(T); print("RightSide: "); S[1:len] |> Println
    S = PosHalf(P);  print("PosHalf:   "); S[1:len] |> Println
    S = NegHalf(P);  print("NegHalf:   "); S[1:len] |> Println
    S = PolyValue(PA, 2); print("PolyVal2:  "); S[1:len] |> Println
    S = PolyValue(PA, 3); print("PolyVal3:  "); S[1:len] |> Println
    S = Trans(T, [ZZ(1) for n = 0:32]);      print("TransUnos: "); S[1:len] |> Println
    S = Trans(T, [ZZ((-1)^n) for n = 0:32]); print("TransAlts: "); S[1:len] |> Println
    S = Trans(T, [ZZ(n) for n = 0:32]); print("TransNat0: "); S[1:len] |> Println
    S = Trans(T, [ZZ(n) for n = 1:32]); print("TransNat1: "); S[1:len] |> Println
    println()
end


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
    println()
end

function TraitCard(triangle::Function, dim=8)
    T = triangle(dim)
    TraitCard(T, "$triangle ", dim)
    AssociatedTriangles(T, dim)
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
end

function demo()
end

function perf()
end

function main()
    test()
    demo()
    perf()
end

main()

end # module
