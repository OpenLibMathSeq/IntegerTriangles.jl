# This file is part of IntegerTriangles
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesBase

using Nemo
import Base.sum

export AbstractSequence, AbstractTriangle
export ℤInt, ℤSeq, ℤTri, ℚInt, ℚSeq, ℚTri, ℤPolySeq, ℚPolySeq
export ℤPolyRing, ℚPolyRing
export ZInt, ZSeq, ZTri, QInt, QSeq, QTri, ZPolySeq, QPolySeq
export ZPolyRing, QPolyRing
export Polynomial, Evaluate, PolyArray, PolyTriangle
export DiagonalTriangle, OrthoPoly, DelehamΔ
export EgfExpansionCoeff, EgfExpansionPoly
export RecTriangle, InverseTriangle
export PolynomialFunction, ReversedPolynomial, PolyValue, PolyVal2, PolyVal3
export RiordanSquare, Println, Print, Telescope, LinMap, Trans
export EvenSum, OddSum, AltSum, DiagSum, Central, Middle
export LeftSide, RightSide, PosHalf, NegHalf, Flat
export Binomial, BinomialTransform, BinomialTriangle, Coefficients
export TransUnos, TransAlts, TransSqrs, TransNat0, TransNat1


"""
Supertype for sequences (or sequence-like types). 
"""
abstract type AbstractSequence end
"""
Supertype for triangles (or triangles-like types). 
"""
abstract type AbstractTriangle end

const Seq{T} = Array{T,1}

const ℤInt  = Nemo.fmpz  # (alias for Nemo.fmpz)
const ℚInt  = Nemo.fmpq  # (alias for Nemo.fmpq)

const ℤSeq = Seq{ℤInt}  # (alias for Array{fmpz, 1})
const ℚSeq = Seq{ℚInt}  # (alias for Array{fmpq, 1})

const ℤTri = Seq{ℤSeq}  # (alias for Array{Array{fmpz, 1}, 1})
const ℚTri = Seq{ℚSeq}  # (alias for Array{Array{fmpq, 1}, 1})

# -------------

# ZZ(n)    # (constructor for fmpz, defined in Nemo)
# QQ(n, k) # (constructor for fmpq, defined in Nemo)

ZSeq(len::Int) = ℤSeq(undef, len) # (constructor for Array{fmpz, 1})
QSeq(len::Int) = ℚSeq(undef, len) # (constructor for Array{fmpq, 1})

ZSeq(len::Int, f::Function) = [ZZ(f(n)) for n in 0:len-1] # (constructor for Array{fmpz, 1})
QSeq(len::Int, f::Function) = [QQ(f(n)) for n in 0:len-1] # (constructor for Array{fmpq, 1})

function ZTri(dim::Int; reg=false) # (constructor for Array{Array{fmpz, 1}, 1})
    reg ? ZSeq.(1:dim) : ℤTri(undef, dim)
end

function QTri(dim::Int; reg=false) # (constructor for Array{Array{fmpq, 1}, 1})
    reg ? QSeq.(1:dim) : ℚTri(undef, dim)
end

ZTri(dim, f::Function) = f.(0:dim-1)
ZTri(T::AbstractTriangle) = [row for row ∈ T]
    
# ---------------

const ℤPoly = Nemo.fmpz_poly # (alias for Nemo.fmpz_poly)
const ℚPoly = Nemo.fmpq_poly # (alias for Nemo.fmpq_poly)

const ℤPolySeq = Seq{ℤPoly} # (alias for Array{fmpz_poly, 1})
const ℚPolySeq = Seq{ℚPoly} # (alias for Array{fmpq_poly, 1})

const ℤPolyTri = Seq{ℤPolySeq} # (alias for Array{Array{fmpz_poly, 1}, 1})
const ℚPolyTri = Seq{ℚPolySeq} # (alias for Array{Array{fmpq_poly, 1}, 1})

# ---------------

ZPolyRing(x) = PolynomialRing(ZZ, x)
QPolyRing(x) = PolynomialRing(QQ, x)

const WARNING_ON_NOTINVERTIBLE = false

function DiagonalTriangle(T::ℤTri)
    dim = length(T)
    U = ZTri(dim)
    for n = 1:dim
        R = ZSeq(div(n + 1, 2))
        for k = 0:div(n - 1, 2)
            R[k + 1] = T[n - k][k + 1]
        end
        U[n] = R
    end
    U
end

"""
The sum of a ℤTri is the sequence of the sum of the rows.
"""
Base.sum(T::ℤTri) = [sum(row) for row ∈ T]
Base.sum(T::ℚTri) = [sum(row) for row ∈ T]

"""
The EvenSum of a ℤSeq is the sum of the even indexed terms, indexing starts with 0.
```
julia> EvenSum([0, 1, 2, 3, 4, 5])  
0 + 2 + 4 = 6
```
"""
EvenSum(A) = sum(A[1:2:end])

"""
The OddSum of a ℤSeq is the sum of the odd indexed terms, indexing starts with 0.
```
julia> OddSum([0, 1, 2, 3, 4, 5])  
1 + 3 + 5 = 9
```
"""
OddSum(A) = sum(A[2:2:end])

"""
The AltSum of a ℤSeq is the alternating sum.
```
julia> AltSum([0, 1, 2, 3, 4, 5])  
+ 0 - 1 + 2 - 3 + 4 - 5 = 6 - 9 = - 3
```
"""
AltSum(A) = EvenSum(A) - OddSum(A)

"""
The Middle of a ℤSeq A is the middle term, A[div(begin + end, 2)].
```
julia> Middle([0, 1, 2, 3, 4, 5]) 
3 
```
"""
Middle(A) = A[div(begin + end, 2)]

"""
The LeftSide of a ℤSeq is the first term.
```
julia> LeftSide([0, 1, 2, 3, 4, 5]) 
0 
```
"""
LeftSide(A) = A[begin]

"""
The RightSide of a ℤSeq is the last term.
```
julia> RightSide([0, 1, 2, 3, 4, 5]) 
5 
```
"""
RightSide(A) = A[end]

"""
The EvenSum of a ℤTri is the sequence of the even sums of the rows.
```
EvenSum(T::ℤTri) = EvenSum.(T)
```
"""
EvenSum(T::ℤTri) = EvenSum.(T)

"""
The OddSum of a ℤTri is the sequence of the odd sums of the rows.
```
OddSum(T::ℤTri) = OddSum.(T)
```
"""
OddSum(T::ℤTri) = OddSum.(T)

"""
The AltSum of a ℤTri is the sequence of the alternating sums of the rows.
```
AltSum(T::ℤTri) = EvenSum(T) - OddSum(T)
```
"""
AltSum(T::ℤTri) = EvenSum(T) - OddSum(T)

"""
The DiagSum of a ℤTri is the sum of the diagonal triangle.
```
DiagSum(T::ℤTri) = sum(DiagonalTriangle(T))
```
"""
DiagSum(T::ℤTri) = sum(DiagonalTriangle(T))

"""
The Middle of a ℤTri is the sequence of the middle term in the rows.
```
Middle(T::ℤTri) = Middle.(T)
```
"""
Middle(T::ℤTri) = Middle.(T)

"""
The Central of a ℤTri is the sequence of the middle term 
of the even indexed rows, indexing starts with 0.
```
Central(T::ℤTri) = Middle.(T[begin:2:end])
```
"""
Central(T::ℤTri) = Middle.(T[begin:2:end])

"""
The LeftSide of a ℤTri is the sequence of the first term in the rows.
```
LeftSide(T::ℤTri) = LeftSide.(T)
```
"""
LeftSide(T::ℤTri) = LeftSide.(T)

"""
The RightSide of a ℤTri is the sequence of the last term in the rows.
```
RightSide(T::ℤTri) = RightSide.(T)
```
"""
RightSide(T::ℤTri) = RightSide.(T)

"""
Return the ℤ-polynomial whose coefficients are the terms of the sequence.
```
[1, 2, 3] -> 1 + 2*x + 3*x^2
```
"""
function Polynomial(S::ℤSeq)
    R, x = ZPolyRing("x")
    sum(c * x^(k - 1) for (k, c) ∈ enumerate(S))
end

"""
Return the sequence of ℤ-polynomials whose coefficients are the terms of the triangle.
```
Polynomial(T::ℤTri) = Polynomial.(T)
```
"""
Polynomial(T::ℤTri) = Polynomial.(T)

"""
Return the ℤ-polynomial whose coefficients are the terms of the reversed sequence.
```
[1, 2, 3] -> x^2 + 2*x + 3
```
"""
ReversedPolynomial(S::ℤSeq) = Polynomial(reverse(S))

"""
Return the sequence of ℤ-polynomials whose coefficients are the terms of the reversed triangle.
```
ReversedPolynomial(T::ℤTri) = ReversedPolynomial.(T)
```
"""
ReversedPolynomial(T::ℤTri) = ReversedPolynomial.(T)

"""
Return the polynomial function associated with the polynomial with coefficients
given by the sequence S. A polynomial function evaluates to Float64 values.
```
p = PolynomialFunction([1, 2, 3])
julia> [p(r) for r in 0:3]
4-element Vector{Float64}:
  1.0
  6.0
 17.0
 34.0
```
"""
function PolynomialFunction(S)
    y -> sum(Float64(c) * y^(k - 1)
            for (k, c) ∈ enumerate(S))
end

"""
Return the sequence of polynomial functions associated to the polynomials with coefficients
given by the triangle T. 
```
PolynomialFunction(T::ℤTri) = PolynomialFunction.(T)
```
"""
PolynomialFunction(T::ℤTri) = PolynomialFunction.(T)

"""
Return the value of the ℤ-polynomial p evaluated at x.
```
julia> R, x = ZPolyRing("x")
p = 1 + 2*x + 3*x^2
Evaluate(p, 2)
17
```
"""
Evaluate(p::ℤPoly, x) = subst(p, x)
Evaluate(p::ℚPoly, x) = subst(p, x)

"""
Return the sequence of values to which the sequence of ℤ-polynomials P evaluate at x.
```
julia> R, x = ZPolyRing("x")
P = [sum(k * x^k for k in 0:n) for n in 0:9]
Evaluate(P, 2)  # A036799
Evaluate(P, 3)  # A289399	
```
"""
Evaluate(P::ℤPolySeq, x) = Evaluate.(P, x)
Evaluate(P::ℚPolySeq, x) = Evaluate.(P, x)

"""
Return the list of coefficients of the polynomial p (ordered by ascending powers).
```
julia> R, x = ZPolyRing("x")
p = 1 + 2*x + 3*x^2
Coefficients(p)
```
"""
Coefficients(p) = coeff.(p, 0:degree(p))

"""
Return the sequence of list of coefficients of the polynomials P.
"""
Coefficients(P::AbstractArray) = Coefficients.(P)

import Nemo.numerator
numerator(T::ℚTri) = [numerator.(t) for t ∈ T]

"""
Return numerator(2^degree(p) * Evaluate(p, QQ(1, 2))).
```
julia> R, x = ZPolyRing("x")
p = 1 + 2*x + 3*x^2
PosHalf(p)
11
```
"""
PosHalf(p) = numerator(2^degree(p) * Evaluate(p, QQ(1, 2)))

"""
Return Numerator((-2)^degree(p) * Evaluate(p, QQ(-1, 2)))
```
julia> R, x = ZPolyRing("x")
p = 1 + 2*x + 3*x^2
NegHalf(p)
3
```
"""
NegHalf(p) = numerator((-2)^degree(p) * Evaluate(p, QQ(-1, 2)))

"""
Return the sequence generated by broadcasting PosHalf over the 
rows of the triangle interpreted as a polynomials.
```
julia> T = [[ZZ(k) for k in 0:n] for n in 1:5]
PosHalf(Polynomial(T))  # A000295
5-element ℤSeq
 1
 4
 11
 26
 57
```
"""
PosHalf(T::ℤTri) = PosHalf.(Polynomial(T))

"""
Return the sequence generated by broadcasting NegHalf over the 
rows of the triangle interpreted as a polynomials.
```
NegHalf(T::ℤTri) = NegHalf.(Polynomial(T))
```
"""
NegHalf(T::ℤTri) = NegHalf.(Polynomial(T))

"""
Return the sequence generated by broadcasting PosHalf over the 
sequence of polynomials.
"""
PosHalf(P::ℤPolySeq) = PosHalf.(P)

"""
Return the sequence generated by broadcasting NegHalf over the 
sequence of polynomials.
"""
NegHalf(P::ℤPolySeq) = NegHalf.(P)

LinMap(M::ℤTri, V::ℤSeq, n) = sum(M[n][k] * V[k] for k = 1:n)

"""
LinMap(M::ℤTri, V::ℤSeq) returns the 'matrix times vector' product
of M and V.
"""
LinMap(M::ℤTri, V::ℤSeq) = (n -> LinMap(M, V, n)).(1:length(V))

LinMap(F::Function, V::ℤSeq, n) = sum(F(n - 1)[k] * V[k] for k = 1:n)

"""
LinMap(F::Function, V::ℤSeq) returns the 'matrix times vector' product
of F (a function returning ℤSeqs) and V.
"""
LinMap(F::Function, V::ℤSeq) = LinMap(F, V, length(V))

"""
Transform a ℤSeq V by the triangle M by applying LinMap to (M, V).
"""
Trans(M::ℤTri, V::ℤSeq) = (n -> LinMap(M, V, n)).(1:min(length(M), length(V)))

TransUnos(T) = Trans(T, [ZZ(1) for n = 0:length(T)]) 
TransAlts(T) = Trans(T, [(-1)^n * ZZ(1) for n = 0:length(T)])
TransSqrs(T) = Trans(T, [ZZ(n^2) for n = 0:length(T)])
TransNat0(T) = Trans(T, [ZZ(n) for n = 0:length(T)])
TransNat1(T) = Trans(T, [ZZ(n) for n = 1:length(T)])

Telescope(A::ℤSeq) = (A[1:k] for k = 1:size(A, 1))
Telescope(len::Int, f::Function) = Telescope([ZZ(f(k)) for k = 0:len - 1])

"""
Return the number of permutations of n letters, ``n! = ∏(1, n)``,
the factorial of ``n``. (Nota: The notation is a shortcut. The use of '!' breaks
Julia naming conventions, therefore use it only internally.)
"""
F!(n) = Nemo.factorial(ZZ(n))

Binomial(n, k) = Nemo.binomial(ZZ(n), ZZ(k))
Binomial(n) = [Binomial(n, k) for k = 0:n]
Binomial(A::ℤSeq) = LinMap(Binomial, A)

BinomialTriangle(dim) = [Binomial(n) for n = 0:dim - 1]
BinomialTransform(A::ℤSeq) = Binomial.(Telescope(A))

Laplace(s, k) = factorial(k) * coeff(s, k)

# Keep module-intern
function EgfExpansion(prec, gf::Function, coeff=true)
    R, x = QPolyRing("x")
    S, t = PowerSeriesRing(R, prec + 1, "t")
    ser = gf(x, t)
    P = Laplace.(ser, 0:prec - 1)
    coeff ? Coefficients.(P) : P
end

EgfExpansionCoeff(prec, gf::Function) = EgfExpansion(prec, gf, true)
EgfExpansionPoly(prec, gf::Function) = EgfExpansion(prec, gf, false)

function OrthoPoly(dim::Int, s::Function, t::Function)
    T = ZTri(dim, reg=true) # regular triangle
    for n ∈ 1:dim T[n][n] = 1 end
    for n ∈ 2:dim
        u(k) = k == 0 || k == n ? 0 : T[n - 1][k]
        for k ∈ 1:n - 1
            T[n][k] = (u(k - 1) + s(k - 1) * u(k) + t(k) * u(k + 1))
        end
    end
    T
end

function DelehamΔ(dim::Int, s::Function, t::Function)
    T = ZTri(dim)
    R, x = ZPolyRing("x")
    A = [R(s(k) + x * t(k)) for k ∈ 0:dim - 2]
    C = [R(1) for i ∈ 0:dim]
    C[1] = R(0)
    m = 1
    for k ∈ 0:dim - 1
        for j ∈ k + 1:-1:2
            C[j] = C[j - 1] + C[j + 1] * A[j - 1]
        end
        T[m] = [coeff(C[2], j) for j ∈ 0:k]
        m += 1
    end
    T
end

function RiordanSquare(dim::Int, s::Function)
    T = ZTri(dim, reg=true)
    for n ∈ 0:dim - 1
        T[n + 1][1] = s(n)
    end
    for k ∈ 1:dim - 1, m ∈ k:dim - 1
        T[m + 1][k + 1] = sum(T[j][k] * T[m - j + 2][1] for j ∈ k:m)
    end
    T
end

function ExpRiordanSquare(dim::Int, s::Function)
    R = RiordanSquare(dim, s)
    u = ZZ(1)
    for k ∈ 1:dim - 1
        u *= k
        for m ∈ 1:k
            j = (m == 1 ? u : div(j, m - 1))
            R[k + 1][m] *= j
        end
    end
    R
end

function check(invM, dim)
    for n = 1:dim
        for k = 1:n
            if denominator(invM[n, k]) != 1
                return false
            end
        end
    end
    return true
end

function InverseTriangle(T)
    dim = length(T)
    M = zeros(QQ, dim, dim)
    for n in 1:dim, k in 1:n
        M[n, k] = QQ(T[n][k])
    end
    S = MatrixSpace(QQ, dim, dim)

    invM = try
        inv(S(M))
        catch e
        if isa(e, Exception)
            if WARNING_ON_NOTINVERTIBLE
                @warn("\n\n Not invertible!\n\n")
            end    
            return []
        end
    end

    # check if all entries are integer.
    if check(invM, dim) != true
        if WARNING_ON_NOTINVERTIBLE
            @warn("\n\n Inverse not in MatrixSpace(ZZ)!\n\n")
        end
        return []
    end

    return [[numerator(invM[n, k]) for k = 1:n] for n = 1:dim]
end

function Flat(T::ℤTri)
    Empty(s) = isempty(s) ? [ZZ(0)] : s
    [z for t ∈ T for z ∈ Empty(t)]
end

# Print the array without typeinfo.
function Println(io, v::AbstractVector, newline=true)
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

Print(io, str::String) = print(io, str)
Print(T::ℤTri) = Println.(IOContext(stdout), T, false)
Print(T::ℤSeq) = Println(IOContext(stdout), T, false)


"""
A recursive triangle `RecTriangle` is a subtype of `AbstractTriangle`. The rows
of the triangle are generated by a function `gen(n, k, prevrow)` defined for
``n ≥ 0`` and ``0 ≤ k ≤ n``. The function returns value of type ℤInt.

The parameter prevrow is a function which returns the values of `row(n-1)` of
the triangle and 0 if ``k < 0`` or ``k > n``. The function prevrow is provided
by an instance of `RecTriangle` and must not be defined by the user.
"""
struct RecTriangle <: AbstractTriangle
    dim::Int
    A::ℤSeq 
    gen::Function  # generating function
    function RecTriangle(dim::Int, gen::Function)
        dim <= 0 && throw(ArgumentError("dim has to be a positive integer."))
        new(
            dim,
            fill(ZZ(0), dim),
            (n::Int, k::Int, f::Function) -> gen(n, k, f)::ℤInt,
        )
    end
end

function Base.iterate(T::RecTriangle)
    top = T.gen(0, 0, () -> undef)
    T.A[1] = ZZ(top)
    ([top], 1)
end

"""
Return the next row of the triangle.
"""
function Base.iterate(T::RecTriangle, n)
    @inline prevrow(A, n) = (k) -> (k < 0 || k > n) ? ZZ(0) : A[k + 1]
    n == T.dim && return nothing
    F(n, k) = T.gen(n, k, prevrow(T.A, n))
    row = [F(n, k) for k ∈ 0:n]
    for k ∈ 1:n + 1
        T.A[k] = row[k]
    end
    (row, n + 1)
end

Base.length(R::RecTriangle) = R.dim
Base.eltype(R::RecTriangle) = ℤInt

function PolyArray(T::ℤTri)
    P = Polynomial(T)
    # P = ReversedPolynomial(T)
    dim = length(T)
    U = ZTri(dim)
    for n = 1:dim
        p = P[n]
        eva = [Evaluate(p, k) for k in 0:dim - 1]
        # Make sure that all denominators are 1.
        # @assert all(d -> d == ZZ(1), denominator.(eva)) "is not an integer"
        U[n] = numerator.(eva)
    end
    U
end

function PolyTriangle(T::ℤTri)
    A = PolyArray(T)
    U = ZTri(length(T))
    for n = 1:length(T)
        U[n] = [A[n - k][k + 1] for k = 0:n - 1]
    end
    U
end

function PolyValue(T::ℤTri, k::Int)
    P = PolyArray(T)
    [P[n][k + 1] for n = 1:length(P)]
end

PolyVal2(T::ℤTri) = PolyValue(T, 2)
PolyVal3(T::ℤTri) = PolyValue(T, 3)

# START-TEST-########################################################
# using Test

function test()
end

function demo()
    Apery = ℤInt[
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

    T = ℤSeq[
        ℤInt[1],
        ℤInt[1, 1],
        ℤInt[2, 4, 1],
        ℤInt[6, 18, 9, 1],
        ℤInt[24, 96, 72, 16, 1],
        ℤInt[120, 600, 600, 200, 25, 1],
        ℤInt[720, 4320, 5400, 2400, 450, 36, 1]
    ]

    println("Trans")
    Trans(T, [ZZ(1) for n = 0:33]) |> println

    DiagonalTriangle(T) |> println
    println(ZTri(3, reg=true))
    println(ZTri(3))

    q = QQ(3, 4)
    q |> println
    typeof(q) |> println

    K(n) = [ZZ(1) for _ in 0:n]
    [LinMap(K, K(n)) for n in 0:9] |> println
    L(n) = [ZZ(k) for k in 0:n]
    [LinMap(L, L(n)) for n in 0:9] |> println

    t = Telescope(ℤInt[1,2,3,4,5])
    typeof(t) |> println
    collect(t) |> println

    egfBernoulli(x, t) = divexact(t * exp(x * t), 1 - exp(-t))
    BernoulliPolynomials(n) = EgfExpansionPoly(n, egfBernoulli)
    BernoulliPolynomials(6) |> println

    Catalan(dim) = OrthoPoly(dim, n -> 0, n -> 1)
    Catalan(7) |> println
    DiagonalTriangle(Catalan(9)) |> println

    P = Polynomial(T)
    p = P[3] 
    p |> println
    typeof(p) |> println
    s = subst(p, 2)
    s |> println
    s = subst(p, QQ(1, 3))
    s |> println

    T = Telescope(6, n -> ZZ(n)) 
    println(isa(collect(T), ℤTri))
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
