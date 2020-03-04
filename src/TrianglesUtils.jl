# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesUtils

using Nemo, TrianglesBase, SeqFingerPrint

export Show

function print_without_type(io, v::AbstractVector)
    print(io, "[")
    for (i, el) ∈ enumerate(v)
        i > 1 && print(io, ", ")
        print(io, el)
    end
    println(io, "]")
end

"""

Print the array ``A`` in the format ``n ↦ A[n]`` for n in the given range.
"""
function MappedShow(A::Array, R::AbstractRange, offset = 0)
    for k ∈ R
        if isassigned(A, k)
            println(k + offset, " ↦ ", A[k])
        else
            println(k + offset, " ↦ ", "undef")
        end
    end
end

"""

Print an integer triangle without typeinfo.
"""
function Show(T::ℤTri, format="std")
#function Base.show(T::Array{Array{fmpz,1},1}, format="std")

    if format == "std"  # default
        for t in T
            print_without_type(IOContext(stdout), t)
        end

    elseif format == "nest"
        T |> println

    elseif format == "flat"
        for n in T, k in n
            print(k, ", ")
        end

    elseif format == "map"
        offset = -1 # Julia is unfortunately 1-based.
        for n in T
            MappedShow(n, 1:length(n), offset)
            offset += length(n)
        end

    elseif format == "info"
        S = [k for row in T for k in row]
        print("[",  SimilarSeq(S), "] ")
        for t in T[1:4], k in t
            print(k, ", ")
        end
        println("... ")
    end
end

#START-TEST-########################################################

using TrianglesExamples

function test()
    T = LaguerreTriangle(7)

    println("\nThe $Laguerre triangle in different formats:")

    println("\nTriangle in standard format:\n")
    Show(T)

    println("\nTriangle as a nested array:\n")
    Show(T, "nest")

    println("\n\nTriangle in flattened format:\n")
    Show(T, "Flat")

    println("\n\nTriangle in info format with sequence ID:\n")
    Show(T, "info")

    println("\nTriangle in mapped format:\n")
    Show(T, "map")
end

function demo()
    N = 7

    println("\nTriangle in standard format:\n")
    Show(LaguerreTriangle(N))

    println("\nTriangle as a nested array:\n")
    Show(LaguerreTriangle(N), "nest")

    println("\n\nTriangle in flattened format:\n")
    Show(LaguerreTriangle(N), "Flat")

    println("\n\nTriangle in mapped format:\n")
    Show(LaguerreTriangle(N), "map")

    println("\nTriangle transform of the squares:\n")
    LaguerreTransform([ZZ(k^2) for k in 0:N-1]) |> println

    println("\nTriangle transform of the IN:\n")
    LaguerreTransform([ZZ(k) for k in 0:N])   |> println
    LaguerreTransform([ZZ(k) for k in 1:N+1]) |> println

    println()
    T = LaguerreTriangle(9)
    PosHalf(T) |> println
    NegHalf(T) |> println

    P = Polynomial(T)
    println(P)
    E = Evaluate(P, 3)
    println(E)

    println()
    Println.(PolyTriangle(T))
    println()
    Println.(PolyArray(T))
    println()
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
