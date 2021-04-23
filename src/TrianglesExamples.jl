# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesExamples

using Nemo, TrianglesBase, xFromIntegerSequences

export LahNumbers, LahTriangle, LahTransform, SchröderBTriangle, SchröderLTriangle, MotzkinTriangle
export Catalan, CatalanTriangle, CatalanTransform, CatalanBallot, ExtCatalanTriangle
export BernoulliPolynomial, PascalTriangle, SchroederBigTriangle, AitkenTriangle
export EulerianTriangle, EulerianTriangle2, NarayanaTriangle, NarayanaTransform
export EulerianTransform, MotzkinTransform, SchroederBigTransform, FubiniTriangle
export JacobsthalTriangle, JacobsthalTransform, FibonacciTriangle, FibonacciTransform
export StirlingSetTriangle, StirlingCycleTriangle, FallingFactTriangle, RisingFactTriangle
export StirlingSetTransform, StirlingCycleTransform, FubiniTriangle, RencontresTriangle
export DArcaisTriangle, WorpitzkyTriangle, EulerianS2Triangle
export I132393, I048993, I271703, I094587, I008279, I225478, T132393, T048993
export T094587, T008279, T225478, T271703
export TRIANGLES

function PrimeDivisors(n)
    n < 2 && return ℤInt[]
    sort!([p for (p, e) ∈ factor(ZZ(n))])
end

# ------------------------------------------------

const CacheLah = Dict{Int,ℤSeq}([0 => [ZZ(1)]])
"""
(SIGNATURES)
"""
function LahNumbers(n::Int64)
    haskey(CacheLah, n) && return CacheLah[n]
    prevrow = LahNumbers(n - 1)
    row = ZSeq(n + 1)
    row[1] = 0
    row[n + 1] = 1
    for k = 2:n
        row[k] = prevrow[k - 1] + prevrow[k] * (n + k - 2)
    end
    CacheLah[n] = row
end

LahNumbers(n, k) = LahNumbers(n)[k + 1]

"""
(SIGNATURES)
"""
function LahTriangle(size)
    length(CacheLah) < size && LahNumbers(size)
    [CacheLah[n] for n = 0:size - 1]
end

LahNumbers(A::ℤSeq) = LinMap(LahNumbers, A, length(A))
LahTransform(A::ℤSeq) = LahNumbers.(Telescope(A))

# ------------------------------------------------

const CacheFubini = Dict{Int,ℤSeq}([0 => [ZZ(1)]])
"""
(SIGNATURES)
"""
function FubiniNumbers(n::Int64)
    haskey(CacheFubini, n) && return CacheFubini[n]
    prevrow = FubiniNumbers(n - 1)
    row = ZSeq(n + 1)
    row[1] = 0
    row[2] = 1
    row[n + 1] = n * prevrow[n]
    for k = 3:n
        row[k] = (k - 1)*(prevrow[k - 1] + prevrow[k])
    end
    CacheFubini[n] = row
end

FubiniNumbers(n, k) = FubiniNumbers(n)[k + 1]

"""
(SIGNATURES)
"""
function FubiniTriangle(size)
    length(CacheFubini) < size && FubiniNumbers(size)
    [CacheFubini[n] for n = 0:size - 1]
end

FubiniNumbers(A::ℤSeq) = LinMap(FubiniNumbers, A, length(A))
FubiniTransform(A::ℤSeq) = FubiniNumbers.(Telescope(A))

# ------------------------------------------------

const CacheAitken = Dict{Int,ℤSeq}([0 => [ZZ(1)]])
"""
(SIGNATURES)
"""
function AitkenNumbers(n::Int64)
    haskey(CacheAitken, n) && return CacheAitken[n]
    prevrow = AitkenNumbers(n - 1)
    row = ZSeq(n + 1)
    row[1] = prevrow[n]
    for k = 2:n + 1
        row[k] = row[k-1] + prevrow[k - 1]
    end
    CacheAitken[n] = row
end

AitkenNumbers(n, k) = AitkenNumbers(n)[k + 1]

"""
(SIGNATURES)
"""
function AitkenTriangle(size)
    length(CacheAitken) < size && AitkenNumbers(size)
    [CacheAitken[n] for n = 0:size - 1]
end

AitkenNumbers(A::ℤSeq) = LinMap(AitkenNumbers, A, length(A))
AitkenTransform(A::ℤSeq) = AitkenNumbers.(Telescope(A))	

# ------------------------------------------------
#row[k] = ( get(prevrow, k - 1, 0)
#+ get(prevrow, k, 0) * (2 * k - 1)
#+ get(prevrow, k + 1, 0) * k^2 )

#A011971 := proc(n, k) option remember; if n=0 and k=0 then 1 elif k=0 
#then A011971(n-1, n-1) else A011971(n, k-1) + A011971(n-1, k-1); fi: end;


G271703(x, t) = exp(t * divexact(x, 1 - t))
T271703(dim) = EgfExpansionCoeff(dim, G271703)

egfBernoulli(x, t) = divexact(t * exp(x * t), exp(t) - 1)
BernoulliPolynomial(n) = EgfExpansionPoly(n, egfBernoulli)

G278075(x, t) = divexact(1, 1 - x * (1 - exp(-t)))
FubiniPolynomial(n) = EgfExpansionPoly(n, G278075)


function MotzkinTriangle2(dim::Int)
    T = ZTri(dim)
    for n = 1:dim
        T[n][n] = 1
    end
    for n = 2:dim
        u(k) = k == 0 || k == n ? 0 : T[n - 1][k]
        for k = 1:n - 1
            T[n][k] = u(k - 1) + u(k) + u(k + 1)
        end
    end
    T
end

# ------------------------------------------------

"""
(SIGNATURES)
"""
MotzkinTriangle(dim) = OrthoPoly(dim, n -> 1, n -> 1)

"""
(SIGNATURES)
"""
Motzkin(n) = MotzkinTriangle(n + 1)[n + 1] # TODO!!

Motzkin(n, k) = Motzkin(n)[k + 1]
Motzkin(A::ℤSeq) = LinMap(Motzkin, A, length(A))
MotzkinTransform(A::ℤSeq) = Motzkin.(Telescope(A))

# ------------------------------------------------

"""
(SIGNATURES)
"""
CatalanTriangle(dim) = OrthoPoly(dim, n -> 0, n -> 1)
Catalan(n) = CatalanTriangle(n + 1)[n + 1] # TODO!!
Catalan(n::Int, k::Int) = Catalan(n)[k + 1]
Catalan(A::ℤSeq) = LinMap(Catalan, A, length(A))
CatalanTransform(A::ℤSeq) = Catalan.(Telescope(A))

const CacheBallot = Dict{Tuple{Int,Int},ℤInt}()

function CatalanBallot(n::Int, k::Int)
    haskey(CacheBallot, (n, k)) && return CacheBallot[(n, k)]
    (k > n || k < 0) && return ZZ(0)
    n == k && return ZZ(1)
    CacheBallot[(n, k)] = (
            CatalanBallot(n - 1, k - 1) +
            CatalanBallot(n - 1, k + 1) +
            (iseven(n - k) ? 0 : CatalanBallot(n - 1, k))
        )
end

CatalanBallot(n) = [CatalanBallot(n, k) for k ∈ 0:n]
ExtCatalanTriangle(dim) = [[CatalanBallot(n, k) for k = 0:n] for n = 0:dim - 1]

# ------------------------------------------------

Rencontres(n, k) = A000166(n - k)*Binomial(n, k) 
RencontresTriangle(dim) = [[Rencontres(n, k) for k = 0:n] for n = 0:dim - 1]

#A008290(n) = A008290Triangle(n + 1)[n + 1]
#A008290(n, k) = A008290(n)[k + 1]
Rencontres(A::ℤSeq) = LinMap(Rencontres, A, length(A))
RencontresTransform(A::ℤSeq) = Rencontres.(Telescope(A))

# ------------------------------------------------

const CacheDArcais = Dict{Tuple{Int,Int},ℤInt}()

function DArcais(n, k)  
    haskey(CacheDArcais, (n, k)) && return CacheDArcais[(n, k)]
    k == 0 && return ZZ(0^n)
    S = sum(Binomial(n-1, j-1)*A038048(j)*DArcais(n-j, k-1) for j in 0:n-k+1)
    CacheDArcais[(n, k)] = S
end

DArcaisTriangle(dim) = [[DArcais(n, k) for k = 0:n] for n = 0:dim - 1]
DArcais(A::ℤSeq) = LinMap(DArcais, A, length(A))
DArcaisTransform(A::ℤSeq) = DArcais.(Telescope(A))

# ------------------------------------------------

const CacheWorpitzky = Dict{Tuple{Int,Int},ℤInt}()

function Worpitzky(n, k)  
    haskey(CacheWorpitzky, (n, k)) && return CacheWorpitzky[(n, k)]
    S = sum(Eulerian(n, j)*Binomial(n-j, n-k) for j in 0:n)
    CacheWorpitzky[(n, k)] = S
end

WorpitzkyTriangle(dim) = [[Worpitzky(n, k) for k = 0:n] for n = 0:dim - 1]
Worpitzky(A::ℤSeq) = LinMap(Worpitzky, A, length(A))
WorpitzkyTransform(A::ℤSeq) = Worpitzky.(Telescope(A))

# ------------------------------------------------

const CacheEulerianS2 = Dict{Tuple{Int,Int},ℤInt}((0,0) => ZZ(1))

function EulerianS2(n, k) 
    n < 0 && return ZZ(0) 
    haskey(CacheEulerianS2, (n, k)) && return CacheEulerianS2[(n, k)]
    S = EulerianS2(n-1, k)*k + EulerianS2(n-1, k-1)*(2*n - k) 
    CacheEulerianS2[(n, k)] = S
end

EulerianS2Triangle(dim) = [[EulerianS2(n, k) for k = 0:n] for n = 0:dim - 1]
EulerianS2(A::ℤSeq) = LinMap(EulerianS2, A, length(A))
EulerianS2Transform(A::ℤSeq) = EulerianS2.(Telescope(A))

# ------------------------------------------------


bs(n) = iszero(n) ? 0 : isodd(n) ? 2 : 1
SchröderBTriangle(dim) = DelehamΔ(dim, bs, n -> 0^n)

ls(n) = isodd(n) ? 2 : 1
SchröderLTriangle(dim) = DelehamΔ(dim, ls, n -> 0^n)

"""
Recurrence for A132393, StirlingCycle numbers.
"""
function R132393(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    (n - 1) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A048993, StirlingSet numbers.
"""
function R048993(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    k * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A271703, Lah numbers.
"""
function R271703(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    (k - 1 + n) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A094587, (Rising factorials).
"""
function R094587(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    (n - k) * prevrow(k) + prevrow(k - 1)
end

"""
Recurrence for A008279. Number of permutations of n things k at a time.
(Falling factorials)
"""
function R008279(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    prevrow(k) + k * prevrow(k - 1)
end

"""
xIterates over the first n rows of `A132393`.
Triangle of unsigned Stirling numbers of the first kind.
"""
I132393(n) = RecTriangle(n, R132393)
T132393(dim) = ZTri(I132393(dim))

"""
(SIGNATURES)
"""
StirlingCycleTriangle(dim) = T132393(dim)
StirlingCycle(n) = StirlingCycleTriangle(n + 1)[n + 1]
StirlingCycle(n, k) = StirlingCycle(n)[k + 1]
StirlingCycle(A::ℤSeq) = LinMap(StirlingCycle, A, length(A))
StirlingCycleTransform(A::ℤSeq) = StirlingCycle.(Telescope(A))

"""
Iterates over the first n rows of `A048993`.
Triangle of Stirling numbers of 2nd kind.
"""
I048993(n) = RecTriangle(n, R048993)
T048993(dim) = ZTri(I048993(dim))

"""
(SIGNATURES)
"""
StirlingSetTriangle(dim) = T048993(dim)
StirlingSet(n) = StirlingSetTriangle(n + 1)[n + 1]
StirlingSet(n, k) = StirlingSet(n)[k + 1]
StirlingSet(A::ℤSeq) = LinMap(StirlingSet, A, length(A))
StirlingSetTransform(A::ℤSeq) = StirlingSet.(Telescope(A))

# """
# Iterates over the first n rows of `A271703`.
# """
# Alternative definition already given above via EgfExpansion.
# I271703(n) = RecTriangle(n, R271703)
# T271703(dim) = ZTri(I271703(dim))
"""
Iterates over the first n rows of `A094587`.
"""
I094587(n) = RecTriangle(n, R094587)
T094587(dim) = ZTri(I094587(dim))
# T094587(dim) = Reverse(ZTri(I008279(dim)))

"""
Iterates over the first n rows of `A008279`.
"""
I008279(n) = RecTriangle(n, R008279)
T008279(dim) = ZTri(I008279(dim))
# Alias
FallingFactTriangle(dim) = ZTri(I008279(dim))
PermCoeffsTriangle(dim) = ZTri(I008279(dim))

function R225478(n, k, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    4 * prevrow(k - 1) + (4 * n - 1) * prevrow(k)
end
I225478(dim) = RecTriangle(dim, R225478)
T225478(dim) = ZTri(I225478(dim))

function R007318(n, k, prevrow::Function)
    (k == 0 && n == 0) && return ZZ(1)
    prevrow(k - 1) + prevrow(k)
end
I007318(dim) = RecTriangle(dim, R007318)
PascalTriangle(dim) = ZTri(I007318(dim))

function SchroederBig(n, k)
    div(
        (k + 1) * sum(Binomial(n + 1, k + j + 1) *
            Binomial(n + j, j) for j = 0:(n - k)),
        n + 1,
    )
end

function SchroederBigTriangle(dim)
    [[SchroederBig(n, k) for k = 0:n] for n = 0:dim - 1]
end

SchroederBig(n) = SchroederBigTriangle(n + 1)[n + 1]
SchroederBig(A::ℤSeq) = LinMap(SchroederBig, A, length(A))
SchroederBigTransform(A::ℤSeq) = SchroederBig.(Telescope(A))

FJ(n, k) = n <= 2 ? 1 : FJ(n - 1, k) + k * FJ(n - 2, k)

"""
(SIGNATURES)
"""
JacobsthalTriangle(dim) = RiordanSquare(dim, n -> FJ(n, 2))
Jacobsthal(n) = JacobsthalTriangle(n + 1)[n + 1]
Jacobsthal(n, k) = Jacobsthal(n)[k + 1]
Jacobsthal(A::ℤSeq) = LinMap(Jacobsthal, A, length(A))
JacobsthalTransform(A::ℤSeq) = Jacobsthal.(Telescope(A))

"""
(SIGNATURES)
"""
FibonacciTriangle(dim) = RiordanSquare(dim, n -> FJ(n, 1))
Fibonacci(n) = FibonacciTriangle(n + 1)[n + 1]
Fibonacci(n, k) = Fibonacci(n)[k + 1]
Fibonacci(A::ℤSeq) = LinMap(Fibonacci, A, length(A))
FibonacciTransform(A::ℤSeq) = Fibonacci.(Telescope(A))

const CacheEulerian = Dict{Tuple{Int,Int},ℤInt}()
function EulerianNumbers(n, k)
    haskey(CacheEulerian, (n, k)) && return CacheEulerian[(n, k)]
    CacheEulerian[(n, k)] = if (k == 0) && (n >= 0)
        ZZ(1)
    elseif (k < 0) || (k > n)
        ZZ(0)
    else
        (n - k) * EulerianNumbers(n - 1, k - 1) +
        (k + 1) * EulerianNumbers(n - 1, k)
    end
end

"""
(SIGNATURES)
"""
EulerianTriangle(dim) = [[EulerianNumbers(n, k) for k = 0:n] for n = 0:dim - 1]
Eulerian(n) = EulerianTriangle(n + 1)[n + 1]
Eulerian(n, k) = Eulerian(n)[k + 1]
Eulerian(A::ℤSeq) = LinMap(Eulerian, A, length(A))
EulerianTransform(A::ℤSeq) = Eulerian.(Telescope(A))

#########################################################
# def A130850(n, k):
#    return add(EulerianNumber(n, j)*binomial(n-j, k) for j in (0..n))
# for n in (0..7): [A130850(n, k) for k in (0..n)]
# (PARI) t(n, k) = (n-k)!*stirling(n+1, n-k+1, 2);
#########################################################

const CacheEulerian2 = Dict{Tuple{Int,Int},fmpz}()
function EulerianNumbers2(n, k)
    haskey(CacheEulerian2, (n, k)) && return CacheEulerian2[(n, k)]
    CacheEulerian2[(n, k)] = if (k == n) 
        ZZ(1)
    elseif (k <= 0) || (k > n)
        ZZ(0)
    else
        (n - k + 1) * EulerianNumbers2(n - 1, k - 1) +
        (k) * EulerianNumbers2(n - 1, k)
    end
end

EulerianTriangle2(dim) = [[EulerianNumbers2(n, k) for k = 0:n] for n = 0:dim - 1]
Eulerian2(n) = EulerianTriangle2(n + 1)[n + 1]
Eulerian2(n, k) = Eulerian2(n)[k + 1]
Eulerian2(A::ℤSeq) = LinMap(Eulerian2, A, length(A))
EulerianTransform2(A::ℤSeq) = Eulerian2.(Telescope(A))

const CacheNarayana = Dict{Tuple{Int,Int},fmpz}()
function NarayanaNumbers(n::Int, k::Int)
    haskey(CacheNarayana, (n, k)) && return CacheNarayana[(n, k)]
    CacheNarayana[(n, k)] = if (k == n)
        ZZ(1)
    elseif k > n || k <= 0
        ZZ(0)
    else
div(
            Binomial(ZZ(n), n - k) * Binomial(ZZ(n - 1), n - k),
            ZZ(n - k + 1),
        )
    end
end

"""
(SIGNATURES)
"""
NarayanaTriangle(dim) = [[NarayanaNumbers(n, k) for k = 0:n] for n = 0:dim]
Narayana(n) = NarayanaTriangle(n + 1)[n + 1]
Narayana(n, k) = Narayana(n)[k + 1]
Narayana(A::ℤSeq) = LinMap(Narayana, A, length(A))
NarayanaTransform(A::ℤSeq) = Narayana.(Telescope(A))

"""
(SIGNATURES)
"""
RisingFactTriangle(dim) = [[rising_factorial(ZZ(n), ZZ(k)) for k = 0:n] for n = 0:dim]
RisingFact(n) = RisingFactTriangle(n + 1)[n + 1]
RisingFact(n, k) = RisingFact(n)[k + 1]
RisingFact(A::ℤSeq) = LinMap(RisingFact, A, length(A))
RisingFactTransform(A::ℤSeq) = RisingFact.(Telescope(A))

export Laguerre, LaguerreTriangle, LaguerreTransform

const CacheLaguerre = Dict{Int,ℤSeq}(0 => [ZZ(1)])

function Laguerre(n::Int)
    haskey(CacheLaguerre, n) && return CacheLaguerre[n]
    prevrow = Laguerre(n - 1)
    row = ZSeq(n + 1)
    row[n + 1] = ZZ(1)
    for k ∈ 1:n
        row[k] = ( get(prevrow, k - 1, 0)
                  + get(prevrow, k, 0) * (2 * k - 1)
                  + get(prevrow, k + 1, 0) * k^2 )
    end
    CacheLaguerre[n] = row
end

Laguerre(n::Int, k::Int) = Laguerre(n)[k + 1]
Laguerre(A::ℤSeq) = LinMap(Laguerre, A, length(A))

"""
(SIGNATURES)
"""
function LaguerreTriangle(size::Int)
    length(CacheLaguerre) < size && Laguerre(size)
    [CacheLaguerre[n] for n in 0:size - 1]
end

LaguerreTransform(A::ℤSeq) = Laguerre.(Telescope(A))

function transforms(trans)
    len = 18

    println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
    println(trans)
    println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
    println()
    Unos = [ZZ(1) for n = 0:len]
    print("UNOS ")
    Println(Unos)
    trans(Unos) |> Println

    println()
    AltUnos = [(-1)^n * ZZ(1) for n = 0:len]
    println("ALTS ")
    Println(AltUnos)
    trans(AltUnos) |> Println

    println()
    Squares = [ZZ(n^2) for n = 0:len]
    println("SQRS ")
    Println(Squares)
    trans(Squares) |> Println

    println()
    Nat = [ZZ(n) for n = 0:len]
    println("N0TS ")
    Println(Nat)
    trans(Nat) |> Println

    println()
    Nut = [ZZ(n) for n = 1:len]
    println("NATS ")
    Println(Nut)
    trans(Nut) |> Println
end

const TRIANGLES = Function[
    BinomialTriangle,
    CatalanTriangle,
    EulerianTriangle,
    EulerianS2Triangle,
    FibonacciTriangle,
    LaguerreTriangle,
    LahTriangle,
    MotzkinTriangle,
    NarayanaTriangle,
    SchröderBTriangle,
    SchröderLTriangle,
    StirlingCycleTriangle,
    StirlingSetTriangle,
    FallingFactTriangle,
    RisingFactTriangle,
    FubiniTriangle,
    RencontresTriangle,
    DArcaisTriangle, 
    WorpitzkyTriangle
]


# START-TEST-########################################################
using Test

function test()
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

        # Test types
        @test typeof(Laguerre(3, 3))       === fmpz                   # ℤInt
        @test typeof(Laguerre(5))          === Array{fmpz,1}          # ℤSeq
        @test typeof(Laguerre(A))          === fmpz                   # ℤInt
        @test typeof(LaguerreTriangle(5))  === Array{Array{fmpz,1},1} # ℤTri
        @test typeof(LaguerreTransform(A)) === Array{fmpz,1}          # ℤSeq
    end
end

function demo()
    # isa(PascalTriangle(6), ℤTri) |> println

    FubiniPolynomial(6) |> println
    BernoulliPolynomial(6) |> println
    SchroederBigTriangle(8) |> println

    transforms(BinomialTransform)
    transforms(LahTransform)
    transforms(MotzkinTransform)
    transforms(SchroederBigTransform)

    Println.(JacobsthalTriangle(8))
    transforms(JacobsthalTransform)

    Println.(FibonacciTriangle(8))
    transforms(FibonacciTransform)

    Println.(StirlingSetTriangle(8))
    transforms(StirlingSetTransform)

    Println.(StirlingCycleTriangle(8))
    transforms(StirlingCycleTransform)

    Println.(LaguerreTriangle(8))
    transforms(LaguerreTransform)

    Println.(EulerianTriangle(8))
    Println.(EulerianTriangle2(8))
    transforms(EulerianTransform)

    Println.(Inverse(EulerianTriangle2(8)))

    Println.(NarayanaTriangle(8))
    transforms(NarayanaTransform)

    CatalanBallot.(0:6) |> println

    Println.(Reverse(DiagonalTriangle(FallingFactTriangle(10))))
    Println.(Reverse(FallingFactTriangle(10)))

    Println.(RisingFactTriangle(10))
    Println.(Inverse(RisingFactTriangle(10)))
    Println.(Reverse(RisingFactTriangle(10)))
    Println.(Inverse(Reverse(RisingFactTriangle(10))))
end

function perf()
    # display(@benchmark LaguerreTriangle(1000))
    # display(@benchmark PolyArray(LaguerreTriangle(100)))
    # @time LaguerreTriangle(1000)
    # @time PolyArray(LaguerreTriangle(100))
    T = LaguerreTriangle(8)
    Println.(PolyTriangle(T))
    Println.(PolyArray(T))
    Println.(Inverse(PolyTriangle(T)))
    Println.(FubiniTriangle(8)) 
    Println.(DArcaisTriangle(8)) 
end

function main()
    test()
    demo()
    perf()
end

#main()
Println.(ConvTri(EulerianS2Triangle(8))) 


end # module

#=
A008284    T := proc(n, k) option remember; if k < 0 or n < 0 then 0 elif k = 0 
           then if n = 0 then 1 else 0 fi else T(n - 1, k - 1) + T(n - k, k) fi end: 
A008298		Triangle of D'Arcais numbers.
A008290		Triangle T(n,k) of rencontres numbers
A008291		Triangle of rencontres numbers.
A010048		Triangle of Fibonomial coefficients.
A008279		Triangle T(n,k) = n!/(n-k)! (0 <= k <= n) 
            read by rows, giving number of permutations of n things k at a time.
A019538		Triangle of numbers T(n,k) = k!*Stirling2(n,k) 
A011971		Aitken's array: 
A009766		Catalan's triangle T(n,k) 
A008288     := proc(n, k) option remember; if k = 0 then 1 elif n=k then 1 
            else A008288(n-1, k-1) + A008288(n-2, k-1) + A008288(n-1, k) fi; end: 
=#             