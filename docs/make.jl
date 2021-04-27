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
        "Aitken" => "Aitken.md",
        "Binomial" => "Binomial.md",
        "Catalan" => "Catalan.md",
        "DArcais" => "DArcais.md",
        "Delannoy" => "Delannoy.md",
        "Euler" => "Euler.md",
        "EulerSec" => "EulerS.md",
        "EulerTan" => "EulerT.md",
        "Eulerian" => "Eulerian.md",
        "EulerianS2" => "EulerianS2.md",
        "FallingFact" => "FallingFact.md",
        "Fibonacci" => "Fibonacci.md",
        "Fine" => "Fine.md",
        "Fubini" => "Fubini.md",
        "Laguerre" => "Laguerre.md",
        "Lah" => "Lah.md",
        "Motzkin" => "Motzkin.md",
        "Narayana" => "Narayana.md",
        "Rencontres" => "Rencontres.md",
        "RisingFact" => "RisingFact.md",
        "SchroederBig" => "SchroederB.md",
        "SchroederLittle" => "SchroederL.md",
        "StirlingCycle" => "StirlingCycle.md",
        "StirlingSet" => "StirlingSet.md",
        "TTree" => "TTree.md",
        "Uni" => "Uni.md",
        "Worpitzky" => "Worpitzky.md"
    ]
)

deploydocs(            
    repo = "github.com/OpenLibMathSeq/IntegerTriangles.jl.git",
    target = "build"
)

