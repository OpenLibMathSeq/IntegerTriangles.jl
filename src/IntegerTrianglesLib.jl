# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))


module IntegerTrianglesLib

using Nemo

export evensum, oddsum, altsum, diagsum, central, middle
export leftside, rightside, poshalf, neghalf
export IntegerSequence, IntegerTriangle, RationalSequence, RationalTriangle
export ZZSequence, ZZTriangle, ZZPolySeq, QQPolySeq, Polynomial
export QQSequence, QQTriangle, ZZPolynomials, QQPolynomials
export diag, OrthoPoly, DeléhamΔ, EgfExpansion, EgfPolyExpansion
export AbstractTriangle, RecTriangle, InverseTriangle, Flatten, Println
export Binomial, MakeFunction, FunctionList, PolynomialFunction

const IntegerSequence = Array{fmpz,1}
const IntegerTriangle = Array{Array{fmpz,1},1}

const RationalSequence = Array{fmpq,1}
const RationalTriangle = Array{Array{fmpq,1},1}

const ZZPolySeq = Array{fmpz_poly,1}
const QQPolySeq = Array{fmpq_poly,1}

abstract type AbstractTriangle end

ZZSequence(len) = Vector{fmpz}(undef, len)
ZZTriangle(dim, undef) = Vector{IntegerSequence}(undef, dim)

ZZTriangle(dim) = ZZSequence.(1:dim)
ZZTriangle(dim, f::Function) = f.(0:dim-1)
ZZTriangle(T::AbstractTriangle) = [row for row ∈ T]

QQSequence(len) = Vector{fmpq}(undef, len)
QQTriangle(dim, undef) = Vector{RationalSequence}(undef, dim)

ZZPolynomials(x) = PolynomialRing(ZZ, x)
QQPolynomials(x) = PolynomialRing(QQ, x)

function diag(T)
    dim = length(T)
    U = ZZTriangle(dim)
    for n = 1:dim
        R = ZZSequence(div(n + 1, 2))
        for k = 0:div(n - 1, 2)
            R[k+1] = T[n-k][k+1]
        end
        U[n] = R
    end
    U
end

import Base.sum
Base.sum(T::IntegerTriangle) = [sum(row) for row in T]

evensum(A) = sum(A[1:2:end])
oddsum(A) = sum(A[2:2:end])
altsum(A) = evensum(A) - oddsum(A)
middle(A) = A[div(end + 1, 2)]
leftside(A) = A[1]
rightside(A) = A[end]

evensum(T::IntegerTriangle) = evensum.(T)
oddsum(T::IntegerTriangle) = oddsum.(T)
altsum(T::IntegerTriangle) = evensum(T) - oddsum(T)
diagsum(T::IntegerTriangle) = sum(diag(T))
middle(T::IntegerTriangle) = middle.(T)
central(T::IntegerTriangle) = middle.(T[1:2:end])
leftside(T::IntegerTriangle) = leftside.(T)
rightside(T::IntegerTriangle) = rightside.(T)

# Triangles -> Polynomials
function Polynomial(s)
    R, x = ZZPolynomials("x")
    sum(c * x^(k - 1) for (k, c) in enumerate(s))
end
Polynomial(T::IntegerTriangle) = Polynomial.(T)

# Triangles ->  PolynomialFunctions
function PolynomialFunction(s)
    y -> sum(Float64(c)*y^(k - 1) for (k, c) in enumerate(s))
end
PolynomialFunction(T::IntegerTriangle) = PolynomialFunction.(T)

import Nemo.numerator
numerator(T::RationalTriangle) = [numerator.(t) for t in T]

# Polynomials -> Triangles
coefficients(p) = coeff.(p, 0:degree(p))
coefficients(P::AbstractArray) = coefficients.(P)

function Evaluate(p, x)
    Q, z = PolynomialRing(QQ, "z")
    subst(Q(p), x)
end
Evaluate(P::ZZPolySeq, x) = Evaluate.(P, x)

poshalf(p) = numerator((2)^degree(p) * Evaluate(p, 1 // 2))
neghalf(p) = numerator((-2)^degree(p) * Evaluate(p, -1 // 2))
poshalf(P::ZZPolySeq) = poshalf.(P)
neghalf(P::ZZPolySeq) = neghalf.(P)

"""
Return the number of permutations of n letters, ``n! = ∏(1, n)``, the factorial of ``n``. (Nota: The notation is a shortcut. It breaks Julia naming conventions, so better use only internally.)
"""
F!(n) = Nemo.factorial(ZZ(n))

Binomial(n, k) = Nemo.binomial(ZZ(n), ZZ(k))

function xEgfExpansion(prec, gf::Function)
    R, x = PolynomialRing(QQ, "x")
    S, t = PowerSeriesRing(R, prec + 1, "t")
    ser = gf(x, t)
    L = ZZTriangle(prec)
    for k in 0:prec-1
        p = F!(k)*coeff(ser,k)
        L[k+1] = [numerator(coeff(p, n)) for n in 0:k]
    end
    L
end

# for-loop-free version
function EgfExpansion(prec, gf::Function)
    R, x = PolynomialRing(QQ, "x")
    S, t = PowerSeriesRing(R, prec + 1, "t")
    ser = gf(x, t)
    laplace(s, k) = F!(k) * coeff(s, k)
    numerator(coefficients.(laplace.(ser, 0:prec-1)))
end

# Variant returning a sequence of QQPolynomials
function EgfPolyExpansion(prec, gf::Function)
    R, x = QQPolynomials("x")
    S, t = PowerSeriesRing(R, prec + 1, "t")
    [factorial(k) * coeff(gf(x, t), k) for k ∈ 0:prec-1]
end

function OrthoPoly(dim::Int, s::Function, t::Function)
    T = ZZTriangle(dim)
    for n ∈ 1:dim
        T[n][n] = 1
    end
    for n ∈ 2:dim
        u(k) = k == 0 || k == n ? 0 : T[n-1][k]
        for k ∈ 1:n-1
            T[n][k] = u(k - 1) + s(k - 1) * u(k) + t(k) * u(k + 1)
        end
    end
    T
end

function DeléhamΔ(dim::Int, s::Function, t::Function)
    T = ZZTriangle(dim)
    R, x = ZZPolynomials("x")
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
    T = ZZTriangle(dim)
    for n ∈ 1:dim
        T[n][1] = s(n)
    end
    for k ∈ 2:dim, m ∈ k:dim
        T[m][k] = sum(T[j][k-1] * T[m-j+1][1] for j ∈ k:m)
    end
    T
end

function InverseTriangle(T)
    dim = length(T)
    M = zeros(BigInt, dim, dim)
    for n in 1:dim, k in 1:n
        M[n, k] = T[n][k]
    end
    IM = inv(M)
    [[ZZ(IM[n, k]) for k in 1:n] for n in 1:dim]
end

Flatten(T) = [T[n][k] for n in 1:length(T) for k in 1:n]

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
Println(T::IntegerTriangle) = Println.(IOContext(stdout), T)
Println(T::IntegerSequence)  = Println(IOContext(stdout), T)

# --------------------------------------------------
# MakeFunction(body::String) = eval(Meta.parse("x -> " * body))
# --------------------------------------------------

"""
A recursive triangle `RecTriangle` is a subtype of `AbstractTriangle`. The rows of the triangle are generated by a function `gen(n, k, prevrow)` defined for ``n ≥ 0`` and ``0 ≤ k ≤ n``. The function returns value of type fmpz.

The parameter prevrow is a function which returns the values of `row(n-1)` of the triangle and 0 if ``k < 0`` or ``k > n``. The function prevrow is provided
by an instance of `RecTriangle` and must not be defined by the user.
"""
struct RecTriangle <: AbstractTriangle
    dim::Int
    A::Array{fmpz}
    gen::Function  # generating function
    function RecTriangle(dim::Int, gen::Function)
        dim <= 0 && throw(ArgumentError("dim has to be a positive integer."))
        new(
            dim,
            fill(ZZ(0), dim),
            (n::Int, k::Int, f::Function) -> gen(n, k, f)::fmpz
        )
    end
end

function Base.iterate(T::RecTriangle)
    top = T.gen(0, 0, () -> undefined)
    T.A[1] = ZZ(top)
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

end # module
