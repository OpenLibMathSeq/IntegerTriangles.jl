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

function strip(seq)
# strip(seq) = replace(seq, ' ' => "")
    str = string(seq)
    c = ""
    for s in str[10:end]
        s != ' ' && (c *= s)
    end
    c
end

function profileToFile(T::IntegerTriangle, name)
    H = SequenceHash(T)

    function prnt(io, name, seq)
        h = SequenceHash(seq)
        Println(io, seq, false)
        println(io, "(", h[1:8], " ", name, " ", H[1:8], ")")
        if (h[1:8] != "a38a0a11") && (h[1:8] != "29db0a91")
            println("SEARCHED", strip(seq))
            oeis_search(seq, 2)
        end
    end

    open("profile.txt", "a") do io
        Println(io, H * " " * name)
        x = sum(T);     prnt(io, "Sum", x)
        x = evensum(T); prnt(io, "EvenSum", x)
        x = oddsum(T);  prnt(io, "OddSum", x)
        x = altsum(T);  prnt(io, "AltSum", x)
        x = diagsum(T); prnt(io, "DiagSum", x)
        x = central(T); prnt(io, "Central", x)
        x = leftside(T); prnt(io, "LeftSide", x)
        x = rightside(T); prnt(io, "RightSide", x)
        P = Polynomial(T)
        x = poshalf(P); prnt(io, "PosHalf", x)
        x = neghalf(P); prnt(io, "NegHalf", x)
    end
end

#Characteristics = Function[sum, evensum, oddsum, altsum, diagsum,
#central, leftside, rightside, poshalf, neghalf]

end # module
