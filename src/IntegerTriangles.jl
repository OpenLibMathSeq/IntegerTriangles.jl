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
    print("Middle:    "); middle(T) |> Println
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

function profile(dim=10, tofile=false)

    profile(T225478, dim, false, tofile)

    profile(T132393, dim, false, tofile)
    profile(T132393, dim, true, tofile)

    profile(T048993, dim, false, tofile)
    profile(T048993, dim, true, tofile)

    profile(T271703, dim, false, tofile)
    profile(T271703, dim, true, tofile)

    profile(T094587, dim, false, tofile)
    profile(T094587, dim, true, tofile)

    profile(T008279, dim, false, tofile)

    profile(PascalTriangle, dim, false, tofile)
    profile(PascalTriangle, dim, true, tofile)

    profile(LahTriangle, dim, false, tofile)
    profile(LahTriangle, dim, true, tofile)

    profile(CatalanTriangle, dim, false, tofile)
    profile(CatalanTriangle, dim, true, tofile)

    profile(MotzkinTriangle, dim, false, tofile)
    profile(MotzkinTriangle, dim, true, tofile)

    profile(SchröderB, dim, false, tofile)
    profile(SchröderB, dim, true, tofile)

    profile(SchröderL, dim, false, tofile)
    profile(SchröderL, dim, true, tofile)

end

#profile(10, false)
#profile(10, true)

end # module
