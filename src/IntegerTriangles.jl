# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module IntegerTriangles

using Nemo, IntegerTrianglesLib, IntegerTrianglesExamples
using HashedRelations

export profile

function profile(T::IntegerTriangle, name)
    println("\n=================")
    println(name); println()
    len = min(10, length(T))
    hlen = min(10, div(length(T), 2))

    for row in T[1:len] Println(row) end
    println()
    print("Triangle:  "); flat(T)[1:len]      |> Println
    print("Sum:       "); sum(T)[1:len]       |> Println
    print("EvenSum:   "); evensum(T)[1:len]   |> Println
    print("OddSum:    "); oddsum(T)[1:len]    |> Println
    print("AltSum:    "); altsum(T)[1:len]    |> Println
    print("DiagSum:   "); diagsum(T)[1:len]   |> Println
    print("Middle:    "); middle(T)[1:len]    |> Println
    print("Central:   "); central(T)[1:hlen]  |> Println
    print("LeftSide:  "); leftside(T)[1:len]  |> Println
    print("RightSide: "); rightside(T)[1:len] |> Println
    P = Polynomial(T)
    print("PosHalf:   "); poshalf(P)[1:len]   |> Println
    print("NegHalf:   "); neghalf(P)[1:len]   |> Println
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

function profile(dim=21, tofile=false)

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

function demo()
    dim = 21
    profile(10)

    #profile(LahTriangle, dim, true, false)
    #profile(MotzkinTriangle, dim, false, false)
    #profile(CatalanTriangle, dim, false, false)
    #profile(ExtCatalanTriangle, dim, true)
    #profile(PascalTriangle, dim)
    #profile(PascalTriangle, dim, true, tofile)
    #profile(T094587, dim, true) # core!
    #profile(T008279, dim)
    #profile(T132393, dim, true)
    #profile(T048993, dim)

    # advanced
    #profile(dim, true) # demonstrating local search
end

demo()

end # module
