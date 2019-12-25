# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module HashedRelations

using Nemo, IntegerTrianglesLib, SequenceSearch
export SequenceHash, profileToFile

function SequenceHash(seq)
    Shash = ZZ(length(seq))
    for s in seq
        Shash = hash(s, hash(Shash, UInt64(abs(s))))
    end
    Nemo.hex(ZZ(Shash))
end

SequenceHash(S::IntegerTriangle) = SequenceHash(Flatten(S)[1:15])

function profilepath()
    srcdir = realpath(joinpath(dirname(@__FILE__)))
    ROOTDIR = dirname(srcdir)
    datadir = joinpath(ROOTDIR, "data")
    profilepath = joinpath(datadir, "profile.txt")
end

function profileToFile(T::IntegerTriangle, name)
    H = SequenceHash(T)

    function prnt(io, name, seq)
        h = SequenceHash(seq)
        Println(io, seq, false)
        println(io, h[1:8], " ")
        println(io, "(", H[1:8], " ", name, " ", h[1:8], ")")
    end

    function search(seq)
        str = replace(string(seq)[10:end], ' ' => "")
        println("SEARCHED", str)
        matches = oeis_search(seq, 2, false)
        matches == 0 && println("FAILED")
    end

    open(profilepath(), "a") do io
        Println(io, H * " " * name)
        x = sum(T); prnt(io, "Sum", x); search(x)
        x = evensum(T); prnt(io, "EvenSum", x); search(x)
        x = oddsum(T); prnt(io, "OddSum", x); search(x)
        x = altsum(T); prnt(io, "AltSum", x); search(x)
        x = diagsum(T); prnt(io, "DiagSum", x); search(x)
        x = middle(T); prnt(io, "Middle", x); search(x)
        x = central(T); prnt(io, "Central", x); search(x)
        x = leftside(T); prnt(io, "LeftSide", x); search(x)
        x = rightside(T); prnt(io, "RightSide", x); search(x)
        P = Polynomial(T)
        x = poshalf(P); prnt(io, "PosHalf", x); search(x)
        x = neghalf(P); prnt(io, "NegHalf", x); search(x)
    end
end

#Characteristics = Function[sum, evensum, oddsum, altsum, diagsum,
#central, leftside, rightside, poshalf, neghalf]

end # module
