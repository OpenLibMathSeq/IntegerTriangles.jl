# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesTables

using PrettyTables, TrianglesExplorer
using TrianglesBase, TrianglesExamples, TrianglesUtils

#=
┌──────────┬────────────┬──────┬───────────┬─────────────────────────────────────────────┐
│ A-number │ Triangle   │ Form │ Function  │ Sequence                                    │
├──────────┼────────────┼──────┼───────────┼─────────────────────────────────────────────┤
│ A000302  │ Binomial   │ Std  │ PolyVal3  │ 1, 4, 16, 64, 256, 1024, 4096, 16384        │
│ A001333  │ SchroederB │ Inv  │ AltSum    │ 1, -1, 3, -7, 17, -41, 99, -239             │
│ A006012  │ SchroederL │ Inv  │ AltSum    │ 1, -2, 6, -20, 68, -232, 792, -2704         │
│ A026302  │ Motzkin    │ Rev  │ Central   │ 1, 2, 9, 44, 230, 1242, 6853, 38376         │
│ A103194  │ Laguerre   │ Std  │ TransNat0 │ 0, 1, 6, 39, 292, 2505, 24306, 263431       │
│ A111884  │ Lah        │ Std  │ TransAlts │ 1, -1, -1, -1, 1, 19, 151, 1091             │
│ nothing  │ Laguerre   │ Rev  │ TransNat1 │ 1, 3, 15, 97, 753, 6771, 68983, 783945      │
└──────────┴────────────┴──────┴───────────┴─────────────────────────────────────────────┘
=#


# START-TEST-########################################################

function test()
    header = ["A-number", "Triangle", "Form", "Function", "Sequence"]

    mat = [  # Type Matrix{String}, or Array{String,2}
    "A000302" "Binomial" "Std" "PolyVal3" "1, 4, 16, 64, 256, 1024, 4096, 16384" ;
    "A001333" "SchroederB" "Inv" "AltSum" "1, -1, 3, -7, 17, -41, 99, -239" ;
    "A006012" "SchroederL" "Inv" "AltSum" "1, -2, 6, -20, 68, -232, 792, -2704" ;
    "A026302" "Motzkin" "Rev" "Central" "1, 2, 9, 44, 230, 1242, 6853, 38376" ;
    "A025167" "Laguerre" "Std" "PosHalf" "1, 3, 17, 139, 1473, 19091, 291793, 5129307" ;
    "A103194" "Laguerre" "Std" "TransNat0" "0, 1, 6, 39, 292, 2505, 24306, 263431" ;
    "C000262" "Laguerre" "Std" "TransNat1" "1, 3, 13, 73, 501, 4051, 37633, 394353" ;
    "A103194" "Lah" "Std" "TransSqrs" "0, 1, 6, 39, 292, 2505, 24306, 263431" 
    ]

    println(typeof(mat))

    S = String["A111884" "Lah" "Std" "TransAlts" "1, -1, -1, -1, 1, 19, 151, 1091"] 
    mat = [mat; S]

    L = String["A111884", "Lah", "Std", "TransAlts", "1, -1, -1, -1, 1, 19, 151, 1091"] 
    mat = [mat; reshape(L, 1, 5)]

    L = TriangleInfo("Laguerre", "Rev", "TransNat1")
    mat = [mat; reshape(L, 1, 5)]

    # println(mat)
    pretty_table(mat, header, alignment=[:l,:l,:l,:l,:l])
    # pretty_table(data, header, backend = :html, alignment=[:l,:l,:l,:l,:l])

    open(profilepath(), "a") do io
        pretty_table(io, mat, header, alignment=[:l,:l,:l,:l,:l])
    end
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
