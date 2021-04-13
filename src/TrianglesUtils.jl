# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesUtils

using Nemo, TrianglesBase, HTTP
export Show, GetSeqnum, SeqToString, oeis_search, search_failed
export profilepath

const srcdir = realpath(joinpath(dirname(@__FILE__)))
const ROOTDIR = dirname(srcdir)
const datadir = joinpath(ROOTDIR, "data")
oeis_file() = joinpath(datadir, "stripped")
is_oeis_installed() = isfile(oeis_file())

function profilepath()
    srcdir = realpath(joinpath(dirname(@__FILE__)))
    ROOTDIR = dirname(srcdir)
    datadir = joinpath(ROOTDIR, "data")
    profilepath = joinpath(datadir, "profile.txt")
end

function oeis_notinstalled()
    if !is_oeis_installed()
        @warn("OEIS data not installed! Download stripped.gz from oeis.org,")
        @warn("expand it and put it in the directory ../data.")
        return true
    end
    return false
end

function search_failed(name)
    for ln ∈ eachline(name)
        occursin("greeting", ln) && continue
        occursin("{", ln) && continue
        occursin("start", ln) && continue
        if occursin("\"results\": null", ln)
            return true
        end 
    end 
    false
end            

"""
Search the OEIS for a sequence. The file is saved in the 'data' directory in json format.
"""
function oeis_search(seq)

    seqstr = SeqToString(seq[1:min(end,12)])
    filename = joinpath(datadir, seqstr[1:min(end,12)] * ".json")
    uristr = "https://oeis.org/search?q=" * seqstr * "&go=Search&fmt=json"

    url = HTTP.URI(uristr)
    tries = 3
    r = nothing
    for i = 1:tries
        try
            r = HTTP.get(url; readtimeout = 2)
            getfield(r, :status) == 200 && break
            getfield(r, :status) == 302 && break
        catch e
            @warn(e)
        end
        sleep(2)
    end
    if !(r === nothing) && getfield(r, :status) == 200
        open(filename, "w") do f
            write(f, getfield(r, :body))
        end
        @info("Dowloaded " * basename(filename) * " to " * datadir)
    else
        if r === nothing
            @warn("Search did not succeed, connection timed out.\n")
        else
            @warn("Search did not succeed, $url\nStatus: $(getfield(r, :status))")
        end
    end
    filename
end

function SeqToString(seq::ℤSeq)
    separator = ","
    str = ""
    for term in seq
        str *= string(abs(term)) * separator
    end
    str
end

# increases accuracy and prevents premature matches
const minlen = 30  # fragil! 

function GetSeqnum(seq::ℤSeq)
    str = SeqToString(seq)
    soff = 1; loff = 10 
    println(seq)
    println(str)
    for ln ∈ eachline(oeis_file())
        ln[1] == '#' && continue
        l = replace(ln, "-" => "")
        m = min(length(str), length(l)) 
        len = min(length(str), length(l)-loff) - 1
        len < minlen && continue
        cmp(str[soff:soff+len], l[loff:loff+len]) == 0 && return ln[1:7]
    end
    toff = findfirst(",", str)[1] + 1
    for ln ∈ eachline(oeis_file())
        ln[1] == '#' && continue
        l = replace(ln, "-" => "")
        len = min(length(str)-toff, length(l)-loff) - 1
        len < minlen && continue
        cmp(str[toff:toff+len], l[loff:loff+len]) == 0 && return "B" * ln[2:7]
    end
    for ln ∈ eachline(oeis_file())
        ln[1] == '#' && continue
        l = replace(ln, "-" => "")
        ff = findnext(",", l, 10)
        ff === nothing && continue
        loff = ff[1] + 1; soff = 1
        len = min(length(str)-soff, length(l)-loff) - 1
        len < minlen && continue
        cmp(str[soff:soff+len], l[loff:loff+len]) == 0 && return "C" * ln[2:7]
        len = min(length(str)-toff, length(l)-loff) - 1
        len < minlen && continue
        cmp(str[toff:toff+len], l[loff:loff+len]) == 0 && return "D" * ln[2:7]
    end
    nothing
end

GetSeqnum(seq::ℤTri) = GetSeqnum(Flat(seq))

function GetSeqnum(seq, search=false)
    anum = GetSeqnum(seq)
    if search
        if anum === nothing
            filename = oeis_search(seq)
            if ! search_failed(filename)
                println()
                Println(seq[1:min(18, end)])
                @warn "Not found in the local base but possibly in the OEIS!"
                println()
            end
        end
    end
    anum 
end


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
function MappedShow(A::Array, R::AbstractRange, offset=0)
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

    if format == "std"  # default
        for t in T[1:min(10, end)]
            print_without_type(IOContext(stdout), t)
        end

    elseif format == "nest"
        T |> println

    elseif format == "flat"
        for n in Flat(T)
            print(n, ", ")
        end

    elseif format == "map"
        offset = -1 # Julia is unfortunately 1-based.
        for n in T
            MappedShow(n, 1:length(n), offset)
            offset += length(n)
        end

    elseif format == "info"
        S = Flat(T)
        print("[", GetSeqnum(S), "] ")
        for t in T[1:min(5, end)], k in t
            print(k, ", ")
        end
        println("... ")
    end
end

# START-TEST-########################################################

using TrianglesExamples

function test()

    T = LaguerreTriangle(7)

    println("\nThe $Laguerre triangle in different formats:")

    println("\nTriangle in standard format:\n")
    Show(T)

    println("\nTriangle as a nested array:\n")
    Show(T, "nest")

    println("\n\nTriangle in flattened format:\n")
    Show(T, "flat")

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
    Show(LaguerreTriangle(N), "flat")

    println("\n\nTriangle in mapped format:\n")
    Show(LaguerreTriangle(N), "map")

    println("\nTriangle transform of the squares:\n")
    LaguerreTransform([ZZ(k^2) for k in 0:N - 1]) |> println

    println("\nTriangle transform of the IN:\n")
    LaguerreTransform([ZZ(k) for k in 0:N])   |> println
    LaguerreTransform([ZZ(k) for k in 1:N + 1]) |> println

    println()
    T = LaguerreTriangle(9)
    PosHalf(T) |> println
    NegHalf(T) |> println

    println()
    P = Polynomial(T)
    println.(P)
    E = Evaluate(P, ZZ(3))
    println(E)

    println()
    Println.(PolyTriangle(T))
    println()
    Println.(PolyArray(T))
    println()

    oeis_search(ℤInt[1,2,3,4,5,6,7])
end


function perf()
    GetSeqnum(ℤInt[1, 1, -2, 3, -3, 3, -5, 7, -6, 6, -10, 
    12, -11, 13, -17, 20, -21, 21, -27, 34, -33, 36, -46, 51, 
    -53, 58, -68, 78, -82, 89, -104]) |> println
    GetSeqnum(ℤInt[0, 1, 1, 1, 2, 1, 2, 1, 5, 2, 2, 1, 5, 1, 
    2, 1, 14, 1, 5, 1, 5, 2, 2, 1, 15, 2, 2, 5, 4, 1, 4, 1, 51, 
    1, 2, 1, 14, 1, 2, 2, 14, 1, 6, 1, 4, 2, 2, 1, 52]) |> println
    GetSeqnum(ℤInt[1, 1, 7, 37, 241, 2101, 18271, 201097, 2270017, 
    29668681, 410815351, 6238931821, 101560835377, 1765092183037, 
    32838929702671, 644215775792401]) |> println
    GetSeqnum(ℤInt[1, 1, 1, 7, 37, 241, 2101, 18271, 201097, 2270017, 
    29668681, 410815351, 6238931821, 101560835377, 1765092183037, 
    32838929702671, 644215775792401]) |> println
    GetSeqnum(ℤInt[0, 1, 2, 7, 44, 361, 3654, 44207, 622552, 10005041, 
    180713290, 3624270839, 79914671748, 1921576392793, 50040900884366, 
    1403066801155039, 42142044935535536]) |> println
    GetSeqnum(ℤInt[0, 70, 3783, 338475, 40565585, 6061961733, 
    1083852977811, 225615988054171, 53595807366038234, 14308700593468127485, 
    4241390625289880226714]) |> println
end

function main()
    test()
    demo()
    perf()
end

main()

end # module
