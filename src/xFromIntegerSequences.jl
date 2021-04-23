# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module xFromIntegerSequences

using Nemo, TrianglesBase 
export A000166, A038048

const CacheA000166 = Dict{Int,ℤInt}(0 => ZZ(1))
"""
Return the subfactorial of n.
(SIGNATURES)
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

println([A038048(n) for n in 0:9])

end # module