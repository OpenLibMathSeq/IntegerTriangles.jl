prodir = realpath(joinpath(dirname(dirname(@__FILE__))))
srcdir = joinpath(prodir, "src")
srcdir ∉ LOAD_PATH && push!(LOAD_PATH, srcdir)

using Documenter
using IntegerTriangles

makedocs(
    modules = [IntegerTriangles],
    sitename = "IntegerTriangles",
    clean = true,
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
        "Laguerre" => "Laguerre.md",
        "Motzkin" => "Motzkin.md",
        "Narayana" => "Narayana.md",
        "SchroederBig" => "SchroederB.md",
        "SchroederLittle" => "SchroederL.md",
        "StirlingCycle" => "StirlingCycle.md",
        "StirlingSet" => "StirlingSet.md",
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter 
# manual for more information.

#deploydocs(
#    repo = "github.com/OpenLibMathSeq/IntegerTriangles.jl.git",
#    push_preview = true
#    )

