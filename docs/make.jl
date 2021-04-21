prodir = realpath(joinpath(dirname(dirname(@__FILE__))))
srcdir = joinpath(prodir, "src")
srcdir ∉ LOAD_PATH && push!(LOAD_PATH, srcdir)

using Documenter
using IntegerTriangles

makedocs(
    modules = [IntegerTriangles],
    sitename = "IntegerTriangles.jl",
    clean = true,
    checkdocs = :none,
    doctest = false,
    pages = [
        "Introduction" => "introduction.md",
        "Library" => "index.md",
        "Modules" => "modules.md",
        "Binomial" => "Binomial.md",
        "Catalan" => "Catalan.md",
        "Eulerian" => "Eulerian.md",
        "FallingFact" => "FallingFact.md",
        "Fibonacci" => "Fibonacci.md",
        "Fubini" => "Fubini.md",
        "Laguerre" => "Laguerre.md",
        "Lah" => "Lah.md",
        "Motzkin" => "Motzkin.md",
        "Narayana" => "Narayana.md",
        "RisingFact" => "RisingFact.md",
        "SchroederBig" => "SchroederB.md",
        "SchroederLittle" => "SchroederL.md",
        "StirlingCycle" => "StirlingCycle.md",
        "StirlingSet" => "StirlingSet.md"
    ]
)

deploydocs(            
    repo = "github.com/OpenLibMathSeq/IntegerTriangles.jl.git",
    target = "build"
)

