# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module IntegerTrianglesExamples

using Nemo, IntegerTrianglesLib

export LahNumbers, LahTriangle, SchröderB, SchröderL
export MotzkinTriangle, CatalanTriangle, ExtCatalanTriangle, BernoulliPolynomial
export PascalTriangle
export I132393, I048993, I271703, I094587, I008279, I225478
export T132393, T048993, T271703, T094587, T008279, T225478

function PrimeDivisors(n)
    n < 2 && return fmpz[]
    sort!([p for (p, e) ∈ factor(ZZ(n))])
end

const CacheLah = Dict{Int,Array{fmpz,1}}([0 => [ZZ(1)]])
function LahNumbers(n)
    haskey(CacheLah, n) && return CacheLah[n]
    prevrow = LahNumbers(n - 1)
    row = ZZSequence(n + 1)
    row[1] = 0
    row[n+1] = 1
    for k = 2:n
        row[k] = prevrow[k-1] + prevrow[k] * (n + k - 2)
    end
    CacheLah[n] = row
end

LahNumbers(n, k) = LahNumbers(n + 1)[k+1]

function LahTriangle(size)
    length(CacheLah) < size && LahNumbers(size)
    [CacheLah[n] for n = 0:size-1]
end

G271703(x, t) = exp(t * divexact(x, 1 - t))
T271703(dim) = EgfExpansion(dim, G271703)

egfBernoulli(x, t) = divexact(t * exp(x * t), exp(t) - 1)
BernoulliPolynomial(n) = EgfPolyExpansion(n, egfBernoulli, poly)

MotzkinTriangle(dim) = OrthoPoly(dim, n -> 1, n -> 1)
CatalanTriangle(dim) = OrthoPoly(dim, n -> 0, n -> 1)

const CacheBallot = Dict{Tuple{Int,Int},fmpz}()

function CatalanBallot(n::Int, k::Int)
    haskey(CacheBallot, (n, k)) && return CacheBallot[(n, k)]
    (k > n || k < 0) && return ZZ(0)
    n == k && return ZZ(1)
    C = (CatalanBallot(n - 1, k - 1) + CatalanBallot(n - 1, k + 1) +
         (iseven(n - k) ? 0 : CatalanBallot(n - 1, k)))
    CacheBallot[(n, k)] = C
end

ExtCatalanTriangle(dim) = [[CatalanBallot(n, k) for k = 0:n] for n in 0:dim-1]

bs(n) = iszero(n) ? 0 : isodd(n) ? 2 : 1
SchröderB(dim) = DeléhamΔ(dim, bs, n -> 0^n)

ls(n) = isodd(n) ? 2 : 1
SchröderL(dim) = DeléhamΔ(dim, ls, n -> 0^n)

"""
Recurrence for A132393, StirlingCycle numbers.
"""
function R132393(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    (n - 1) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A048993, StirlingSet numbers.
"""
function R048993(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    k * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A271703, Lah numbers.
"""
function R271703(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    (k - 1 + n) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A094587, (Rising factorials).
"""
function R094587(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    (n - k) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A008279. Number of permutations of n things k at a time. (Falling factorials)
"""
function R008279(n::Int, k::Int, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    prevrow(k) + k * prevrow(k - 1)
end

"""
Iterates over the first n rows of `A132393`.
"""
I132393(n) = RecTriangle(n, R132393)
T132393(dim) = ZZTriangle(I132393(dim))
"""
Iterates over the first n rows of `A048993`.
"""
I048993(n) = RecTriangle(n, R048993)
T048993(dim) = ZZTriangle(I048993(dim))
"""
Iterates over the first n rows of `A271703`.
"""
#Alternative definition already given above via EgfExpansion.
#I271703(n) = RecTriangle(n, R271703)
#T271703(dim) = ZZTriangle(I271703(dim))
"""
Iterates over the first n rows of `A094587`.
"""
I094587(n) = RecTriangle(n, R094587)
T094587(dim) = ZZTriangle(I094587(dim))
"""
Iterates over the first n rows of `A008279`.
"""
I008279(n) = RecTriangle(n, R008279)
T008279(dim) = ZZTriangle(I008279(dim))

function R225478(n, k, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    4 * prevrow(k - 1) + (4 * n - 1) * prevrow(k)
end
I225478(dim) = RecTriangle(dim, R225478)
T225478(dim) = ZZTriangle(I225478(dim))

# http://www.luschny.de/ect/Pascal-Triangle.html
function R007318(n, k, prevrow::Function)
    (k == 0 && n == 0) && return fmpz(1)
    prevrow(k - 1) + prevrow(k)
end
I007318(dim) = RecTriangle(dim, R007318)
PascalTriangle(dim) = ZZTriangle(I007318(dim))
#isa(PascalTriangle(6), IntegerTriangle) |> println

end # module
