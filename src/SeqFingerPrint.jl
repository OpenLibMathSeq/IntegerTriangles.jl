# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module SeqFingerPrint

using Nemo, TrianglesBase

export SimilarSeq, AnumToFingerPrint, AnumSearch

function makeFingerPrint(str::String)
    if length(str) < 32
        # println("Need more terms.")
        return "XXXXXXXX"
    end
    a = parse(UInt64, str[1:16],  base=16)
    b = parse(UInt64, str[17:32], base=16)
    str2 = string(xor(a, ~b))
    a = parse(UInt32, str2[1:8],  base=16)
    b = parse(UInt32, str2[9:16], base=16)
    string(xor(a, ~b), base=16, pad=8)
end

function SimilarSeq(seq::ℤSeq)
    str = ""
    for term in seq
        if term < 0 str *= "a" end
        str *= string(abs(term))
        if length(str) > 34 break end
    end
    makeFingerPrint(str)
end

function SimilarSeq(str::String)
    str = replace(str, "-" => "a")
    makeFingerPrint(str)
end

SimilarSeq(S::ℤTri) = SimilarSeq(Flat(S))

#################################################################

const srcdir = realpath(joinpath(dirname(@__FILE__)))
const ROOTDIR = dirname(srcdir)
const datadir = joinpath(ROOTDIR, "data")
oeis_path() = joinpath(datadir, "stripped")
tabl_path() = joinpath(datadir, "LookUpTable.txt")
is_oeis_installed() = isfile(oeis_path())

function oeis_notinstalled()
    if !is_oeis_installed()
        @warn("OEIS data not installed! Download stripped.gz from oeis.org,")
        @warn("expand it and put it in the directory ../data.")
        return true
    end
    return false
end

function AnumToFingerPrint(anum::String)

    if !occursin(r"^A[0-9]{6}$", anum)
        @warn(anum * " is not a valid A-number!")
        return []
    end
    oeis_notinstalled() && return []

    data = open(oeis_path(), "r")
    for ln ∈ eachline(data)
        if startswith(ln, anum)
            A = replace(ln, "," => "c")[8:end]
            return SimilarSeq(A)
        end
    end
    close(data)
    return "XXXXXXXX"
end

function AnumSearch(FP, verbose=false)
    matches = 0
    anum = ""
    verbose && println("Searching for: ", FP)
    data = open(tabl_path(), "r")
    for line ∈ eachline(data)
        index = findfirst(FP, line)
        index === nothing && continue
        anum *= line[12:end]
        verbose && println(line[12:end])
        matches += 1
    end
    close(data)
    verbose && println("Matches: ", matches)
    anum
end

function AllFingerPrints()
    data = open(oeis_path(), "r")
    tabl = open(tabl_path(), "w")
    for n in 1:331969
        anum = "A" * string(n, base = 10, pad = 6)
        for ln ∈ eachline(data)
            if startswith(ln, anum)
                A = replace(ln, "," => "c")[8:end]
                FP = SimilarSeq(A)
                println(tabl, FP, " -> ", anum)
                break
            end
        end
    end
    close(tabl)
    close(data)
end

#START-TEST-########################################################
using Test

# AllFingerPrints()

function test()

    A = [ZZ(1), -1, 1, 3, -4, 1, -23, 33, -11, 1, 425, -620, 220, -26, 1, -18129, 26525, -9520, 1180, -57, 1, 1721419, -2519664, 905765, -113050, 5649, -120, 1]
    B = [ZZ(1),1,2,2,4,8,13,25,44,83,152,286,538,1020,1942,3725,7145,13781,26627,51572,100099,194633,379037,739250,1443573,2822186,5522889,10818417,21209278,41613288,81705516,160532194,315604479,620834222,1221918604,2406183020,4740461247]

    #function test2()
        for n in 1:100
            anum = "A" * string(n, base = 10, pad = 6)
            FP = AnumToFingerPrint(anum)
            println(anum, " -> ", FP)
        end
    #end
    #test2()

    AnumSearch("8eecebee") |> println
    AnumSearch("c85ebeb0", true)
    AnumSearch("021dbce9") |> println

    println()
    a = SimilarSeq(A)
    println(a)
    aa = AnumSearch(a)
    aa == "" ? println("No match!") : println(aa)
    println()
    b = SimilarSeq(B)
    println(b)
    bb = AnumSearch(b)
    bb == "" ? println("No match!") : println(bb)

    #id:A000085|id:A212915|id:A212916|id:A229053|id:A229068|id:A239080|id:A239081|id:A239082
end

function demo()
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
