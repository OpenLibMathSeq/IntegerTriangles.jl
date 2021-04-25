# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module xFromIntegerSequences

using Nemo, TrianglesBase 
export A000166, A038048, V000111, Fine

const CacheA000166 = Dict{Int,ℤInt}(0 => ZZ(1))
"""
Provisional. Includes some functions from IntegerSequences. Will be deleted.
"""


function A000166(n::Int)
    n <= 1 && return ZZ(1 - n)
    haskey(CacheA000166, n) && return CacheA000166[n]
    a = (n - 1) * (A000166(n - 1) + A000166(n - 2))
    return CacheA000166[n] = a
end

const CacheA038048 = Dict{Int,ℤInt}(0 => ZZ(0))
function A038048(n::Int)
    haskey(CacheA038048, n) && return CacheA038048[n]
	s = Factorial(n - 1) * divisor_sigma(n, 1)
    return CacheA038048[n] = s
end

const CacheFine = Dict{Int,ℤInt}(0 => ZZ(1), 1 => ZZ(1), 2 => ZZ(0))
function Fine(n::Int)
    haskey(CacheFine, n) && return CacheFine[n]
    s = div((7*n - 12)*Fine(n-1) + (4*n - 6)*Fine(n-2), 2*n)
    CacheFine[n] = s
end

const CacheAndré = Dict{Tuple{Int,Int},fmpz}()

function André(m::Int, n::Int)
    haskey(CacheAndré, (m, n)) && return CacheAndré[(m, n)]
    n ≤ 0 && return ZZ(1)
    r = range(0, step = m, stop = n - 1)
    S = sum(binomial(ZZ(n), ZZ(k)) * André(m, k) for k ∈ r)
    return CacheAndré[(m, n)] = n % m == 0 ? -S : S
end

"""
Return the up-down numbers (2-alternating permutations).
"""
V000111(n::Int) = abs(André(2, n))

end # module