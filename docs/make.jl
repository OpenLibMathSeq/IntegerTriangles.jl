using Documenter, IntegerTriangles

makedocs(
    modules = [IntegerTriangles],
    sitename = "IntegerTriangles",
    clean = true,
    doctest = false,
    pages = [
        "Library" => "index.md",
        "Modules" => "modules.md",
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter 
# manual for more information.
#=
deploydocs(
    repo = "github.com/OpenLibMathSeq/IntegerTriangles.jl.git",
    push_preview = true
    )
)=#
