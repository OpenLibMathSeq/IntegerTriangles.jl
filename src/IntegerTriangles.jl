# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module IntegerTriangles

using Nemo, IntegerTrianglesLib, IntegerTrianglesExamples
using HashedRelations

export profile

function profile(T::IntegerTriangle, name)
    println("\n================="); println(name)
    Flatten(T)[1:15] |> Println
    println()
    for row in T Println(row) end
    println()

    print("Sum:       "); sum(T) |> Println
    print("EvenSum:   "); evensum(T) |> Println
    print("OddSum:    "); oddsum(T) |> Println
    print("AltSum:    "); altsum(T) |> Println
    print("DiagSum:   "); diagsum(T) |> Println
    print("Central:   "); central(T) |> Println
    print("LeftSide:  "); leftside(T) |> Println
    print("RightSide: "); rightside(T) |> Println
    P = Polynomial(T)
    print("PosHalf:   "); poshalf(P) |> Println
    print("NegHalf:   "); neghalf(P) |> Println
    println()

end

function profile(f::Function, dim=10, inverse=false, tofile=false)
    name = "$f " * (inverse ? "inverted" : "")
    T = inverse ? InverseTriangle(f(dim)) : f(dim)
    if tofile
        profileToFile(T, name)
    else
        profile(T, name)
        @time f(100)
    end
end

function profile(len)
    profile(T225478, len)

    profile(T132393, len)
    profile(T132393, len, true)

    profile(T048993, len)
    profile(T048993, len, true)

    profile(T271703, len)
    profile(T271703, len, true)

    profile(T094587, len)
    profile(T094587, len, true)

    profile(T008279, len)

    profile(PascalTriangle, len)
    profile(PascalTriangle, len, true)

    profile(LahTriangle, len)
    profile(LahTriangle, len, true)

    profile(CatalanTriangle, len)
    profile(CatalanTriangle, len, true)

    profile(MotzkinTriangle, len)
    profile(MotzkinTriangle, len, true)

    profile(SchröderB, len)
    profile(SchröderB, len, true)

    profile(SchröderL, len)
    profile(SchröderL, len, true)
end

profile(10)

end # module
