# This file is part of IntegerTriangles
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesBase

using Nemo
import Base.sum
include("Aliases.jl")
#abstract type AbstractSequence end
#abstract type AbstractTriangle end
#const ℤInt = fmpz
#const ℤSeq = Array{ℤInt,1}
#const ℤTri = Array{ℤSeq,1}
#const ℚInt = fmpq
#const ℚSeq = Array{ℚInt,1}
#const ℚTri = Array{ℚSeq,1}
#const ℤPolySeq = Array{fmpz_poly,1}
#const ℚPolySeq = Array{fmpq_poly,1}

export AbstractSequence, AbstractTriangle
export ℤInt, ℤSeq, ℤTri, ℚInt, ℚSeq, ℚTri, ℤPolySeq, ℚPolySeq
export ℤ, ℤPolyRing, ℚ, ℚPolyRing
export Polynomial, Evaluate, PolyArray, PolyTriangle
export DiagonalTriangle, OrthoPoly, DeléhamΔ
export EgfExpansionCoeff, EgfExpansionPoly
export RecTriangle, InverseTriangle
export PolynomialFunction, ReversedPolynomial
export RiordanSquare, Println
export Telescope, LinMap
export EvenSum, OddSum, AltSum, DiagSum, Central, Middle
export LeftSide, RightSide, PosHalf, NegHalf, Flat
export Binomial, BinomialTransform, BinomialTriangle, Coefficients

ℤ(n) = ZZ(n)
ℚ(z, n) = ℤ(z) // ℤ(n)

ℤSeq(len) = ℤSeq(undef, len)
ℚSeq(len) = ℚSeq(undef, len)

# ---------------
function ℤTri(dim::Int; reg=false)
    reg ? ℤSeq.(1:dim) : ℤTri(undef, dim)
end

ℤSeq(len, f::Function) = f.(0:len-1)
ℤTri(dim, f::Function) = f.(0:dim-1)

# ---------------
ℚTri(dim) = ℚSeq.(1:dim)
ℚTri(dim, f::Function) = f.(0:dim-1)

# ---------------
ℤPolyRing(x) = PolynomialRing(ZZ, x)
ℚPolyRing(x) = PolynomialRing(QQ, x)

Base.sum(T::ℤTri) = [sum(row) for row ∈ T]

#import Nemo.degree
#degree(P::ℤPolySeq) = degree.(P)

# ℚ
# ---------------
function DiagonalTriangle(T::ℤTri)
    dim = length(T)
    U = ℤTri(dim)
    for n = 1:dim
        R = ℤSeq(div(n + 1, 2))
        for k = 0:div(n - 1, 2)
            R[k+1] = T[n-k][k+1]
        end
        U[n] = R
    end
    U
end

EvenSum(A) = sum(A[1:2:end])
OddSum(A) = sum(A[2:2:end])
AltSum(A) = EvenSum(A) - OddSum(A)
Middle(A) = A[div(end + 1, 2)]
LeftSide(A) = A[1]
RightSide(A) = A[end]

EvenSum(T::ℤTri) = EvenSum.(T)
OddSum(T::ℤTri) = OddSum.(T)
AltSum(T::ℤTri) = EvenSum(T) - OddSum(T)
DiagSum(T::ℤTri) = sum(DiagonalTriangle(T))
Middle(T::ℤTri) = Middle.(T)
Central(T::ℤTri) = Middle.(T[1:2:end])
LeftSide(T::ℤTri) = LeftSide.(T)
RightSide(T::ℤTri) = RightSide.(T)

# Triangles -> Polynomials
function Polynomial(S::ℤSeq)
    R, x = ℤPolyRing("x")
    sum(c * x^(k - 1) for (k, c) ∈ enumerate(S))
end
Polynomial(T::ℤTri) = Polynomial.(T)

ReversedPolynomial(S::ℤSeq) = Polynomial(reverse(S))
ReversedPolynomial(T::ℤTri) = ReversedPolynomial.(T)

# Triangles ->  PolynomialFunctions
function PolynomialFunction(s)
    y -> sum(Float64(c) * y^(k - 1)
             for (k, c) ∈ enumerate(s))
end
PolynomialFunction(T::ℤTri) = PolynomialFunction.(T)

import Nemo.numerator
numerator(T::ℚTri) = [numerator.(t) for t ∈ T]

# Polynomials -> Triangles
Coefficients(p) = coeff.(p, 0:degree(p))
Coefficients(P::AbstractArray) = Coefficients.(P)

function Evaluate(p::Nemo.fmpz_poly, x)
    Q, q = PolynomialRing(QQ, "q")
    subst(Q(p), x)
end

Evaluate(P::ℤPolySeq, x) = Evaluate.(P, x)
Evaluate(P::ℚPolySeq, x) = Evaluate.(P, x)

function Transpose!(T::ℤTri)
    for n in 1:length(T), k in 1:n
        @inbounds T[n][k], T[k][n] = T[k][n], T[n][k]
    end
    T
end

PosHalf(p) = numerator(2^degree(p) * Evaluate(p, 1 // 2))
NegHalf(p) = numerator((-2)^degree(p) * Evaluate(p, -1 // 2))

PosHalf(T::ℤTri) = PosHalf.(Polynomial(T))
NegHalf(T::ℤTri) = NegHalf.(Polynomial(T))

PosHalf(P::ℤPolySeq) = PosHalf.(P)
NegHalf(P::ℤPolySeq) = NegHalf.(P)

"""
Return the number of permutations of n letters, ``n! = ∏(1, n)``,
the factorial of ``n``. (Nota: The notation is a shortcut. The use of '!' breaks
Julia naming conventions, therefore use it only internally.)
"""

LinMap(F::Function, V::ℤSeq, n) = sum(F(n - 1)[k] * V[k] for k = 1:n)
LinMap(F::Function, V::ℤSeq) = LinMap(F, V, length(V))
LinMap(M::ℤTri, V::ℤSeq, n) = sum(M[n][k] * V[k] for k = 1:n)
LinMap(M::ℤTri, V::ℤSeq) = (n -> LinMap(M, V, n)).(1:length(V))

Telescope(A::ℤSeq) = (A[1:k] for k = 1:size(A, 1))
Telescope(len::Int, f::Function) = Telescope([ℤ(f(k)) for k = 0:len-1])

F!(n) = Nemo.factorial(ZZ(n))
Binomial(n, k) = Nemo.binomial(ℤ(n), ℤ(k))
Binomial(n) = [Binomial(n, k) for k = 0:n]
Binomial(A::ℤSeq) = LinMap(Binomial, A)

BinomialTriangle(dim) = [Binomial(n) for n = 0:dim-1]
BinomialTransform(A::ℤSeq) = Binomial.(Telescope(A))

Laplace(s, k) = factorial(k) * coeff(s, k)

# Keep module-intern
function EgfExpansion(prec, gf::Function, coeff = true)
    R, x = ℚPolyRing("x")
    S, t = PowerSeriesRing(R, prec + 1, "t")
    ser = gf(x, t)
    P = Laplace.(ser, 0:prec-1)
    coeff ? Coefficients.(P) : P
end

EgfExpansionCoeff(prec, gf::Function) = EgfExpansion(prec, gf, true)
EgfExpansionPoly(prec, gf::Function) = EgfExpansion(prec, gf, false)

function OrthoPoly(dim::Int, s::Function, t::Function)
    T = ℤTri(dim, reg=true) # regular triangle
    for n ∈ 1:dim T[n][n] = 1 end
    for n ∈ 2:dim
        u(k) = k == 0 || k == n ? 0 : T[n-1][k]
        for k ∈ 1:n-1
            T[n][k] = (
                    u(k - 1)
                    + s(k - 1) * u(k) +
                    t(k) * u(k + 1)
                    )
        end
    end
    T
end

function DeléhamΔ(dim::Int, s::Function, t::Function)
    T = ℤTri(dim)
    R, x = ℤPolyRing("x")
    A = [R(s(k) + x * t(k)) for k ∈ 0:dim-2]
    C = [R(1) for i ∈ 0:dim]
    C[1] = R(0)
    m = 1
    for k ∈ 0:dim-1
        for j ∈ k+1:-1:2
            C[j] = C[j-1] + C[j+1] * A[j-1]
        end
        T[m] = [coeff(C[2], j) for j ∈ 0:k]
        m += 1
    end
    T
end

function RiordanSquare(dim::Int, s::Function)
    T = ℤTri(dim, reg=true)
    for n ∈ 0:dim-1
        T[n+1][1] = s(n)
    end
    for k ∈ 1:dim-1, m ∈ k:dim-1
        T[m+1][k+1] = sum(T[j][k] * T[m-j+2][1] for j ∈ k:m)
    end
    T
end

function ExpRiordanSquare(dim::Int, s::Function)
    R = RiordanSquare(dim, s)
    u = ZZ(1)
    for k ∈ 1:dim-1
        u *= k
        for m ∈ 1:k
            j = (m == 1 ? u : div(j, m - 1))
            R[k+1][m] *= j
        end
    end
    R
end

#import Base.one
#Base.one(::Type{fmpq}) = QQ(1)
#Base.one(::Type{fmpz}) = ZZ(1)

# Make sure that all denominators are 1.
#@assert all(d -> d == ZZ(1), denominator.(eva)) "is not an integer"

function InverseTriangle(T)
    dim = length(T)
    M = zeros(QQ, dim, dim)
    for n = 1:dim, k = 1:n
        M[n, k] = QQ(T[n][k])
    end
    S = MatrixSpace(QQ, dim, dim)

    invM = try
        inv(S(M))
        catch e
        if isa(e, Exception)
            println("Matrix not invertible\n")
            return []
        end
    end

    # try if integer. TODO: Make it a function!
    for n = 1:dim
        for k = 1:n
            if denominator(invM[n, k]) != 1
                println("Inverse not in MatrixSpace(ZZ).")
                println(invM)
                return []
            end
        end
    end
    [[numerator(invM[n, k]) for k = 1:n] for n = 1:dim]
end

function Flat(T::ℤTri)
    Empty(s) = isempty(s) ? [ZZ(0)] : s
    [z for t ∈ T for z ∈ Empty(t)]
end

# Print the array without typeinfo.
function Println(io, v::AbstractVector, newline = true)
    print(io, "[")
    for (i, el) ∈ enumerate(v)
        i > 1 && print(io, ", ")
        print(io, el)
    end
    newline ? println(io, "]") : print(io, "]")
end

# Print the array without typeinfo.
Println(io, str::String) = println(io, str)
Println(T::ℤTri) = Println.(IOContext(stdout), T)
Println(T::ℤSeq) = Println(IOContext(stdout), T)

# --------------------------------------------------
# MakeFunction(body::String) = eval(Meta.parse("x -> " * body))
# --------------------------------------------------

"""
A recursive triangle `RecTriangle` is a subtype of `AbstractTriangle`. The rows
of the triangle are generated by a function `gen(n, k, prevrow)` defined for
``n ≥ 0`` and ``0 ≤ k ≤ n``. The function returns value of type fmpz.

The parameter prevrow is a function which returns the values of `row(n-1)` of
the triangle and 0 if ``k < 0`` or ``k > n``. The function prevrow is provided
by an instance of `RecTriangle` and must not be defined by the user.
"""
struct RecTriangle <: AbstractTriangle
    dim::Int
    A::Array{ℤInt}
    gen::Function  # generating function
    function RecTriangle(dim::Int, gen::Function)
        dim <= 0 && throw(ArgumentError("dim has to be a positive integer."))
        new(
            dim,
            fill(ℤ(0), dim),
            (n::Int, k::Int, f::Function) -> gen(n, k, f)::fmpz,
        )
    end
end

function Base.iterate(T::RecTriangle)
    top = T.gen(0, 0, () -> undef)
    T.A[1] = ℤ(top)
    ([top], 1)
end

"""
Return the next row of the triangle.
"""
function Base.iterate(T::RecTriangle, n)
    @inline prevrow(A, n) = (k) -> (k < 0 || k > n) ? ZZ(0) : A[k+1]
    n == T.dim && return nothing
    F(n, k) = T.gen(n, k, prevrow(T.A, n))
    row = [F(n, k) for k ∈ 0:n]
    for k ∈ 1:n+1
        T.A[k] = row[k]
    end
    (row, n + 1)
end

Base.length(R::RecTriangle) = R.dim
Base.eltype(R::RecTriangle) = fmpz

function PolyArray(T::ℤTri)
    P = Polynomial(T)
    #P = ReversedPolynomial(T)
    dim = length(T)
    U = ℤTri(dim)
    for n = 1:dim
        p = P[n]
        eva = [Evaluate(p, k) for k in 0:dim-1]
        # Make sure that all denominators are 1.
        #@assert all(d -> d == ZZ(1), denominator.(eva)) "is not an integer"
        U[n] = numerator.(eva)
    end
    U
end

function PolyTriangle(T::ℤTri)
    A = PolyArray(T)
    U = ℤTri(length(T))
    for n = 1:length(T)
        U[n] = [A[n-k][k+1] for k = 0:n-1]
    end
    U
end

#START-TEST-########################################################
# using Test

function test()
end

function demo()
    Apery = fmpz[
        1,
        5,
        73,
        1445,
        33001,
        819005,
        21460825,
        584307365,
    ]

    BinomialTransform(Apery) |> println
    Binomial(Apery) |> println

    typeof(Apery) |> println
    println(typeof(Apery) === ℤSeq)
    typeof(Binomial(Apery)) |> println

    T = [
        [ℤ(1)],
        [ℤ(1), 1],
        [ℤ(2), 4, 1],
        [ℤ(6), 18, 9, 1],
        [ℤ(24), 96, 72, 16, 1],
        [ℤ(120), 600, 600, 200, 25, 1],
        [ℤ(720), 4320, 5400, 2400, 450, 36, 1],
    ]
    DiagonalTriangle(T) |> println
    println(ℤTri(3, reg=true))
    println(ℤTri(3))

    q = ℚ(3, 4)
    q |> println
    typeof(q) |> println

    K(n) = [ℤ(1) for _ in 0:n]
    [LinMap(K, K(n)) for n in 0:9] |> println
    L(n) = [ℤ(k) for k in 0:n]
    [LinMap(L, L(n)) for n in 0:9] |> println

    t = Telescope(fmpz[1,2,3,4,5])
    typeof(t) |> println
    collect(t) |> println

    egfBernoulli(x, t) = divexact(t*exp(x*t), 1-exp(-t))
    BernoulliPolynomials(n) = EgfExpansionPoly(n, egfBernoulli)
    BernoulliPolynomials(6) |> println

    Catalan(dim) = OrthoPoly(dim, n -> 0, n -> 1)
    Catalan(7) |> println
    DiagonalTriangle(Catalan(9)) |> println
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
