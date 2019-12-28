# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module PlotPolynomials

using IntegerTrianglesLib, IntegerTrianglesExamples
using Plots; gr()

function PolyPlot(F, title)
    x = -1.0:0.05:1.0
    plot(x,  F[1], c="black",  linewidth=1)
    plot!(x, F[2], c="green",  line=:dash)
    plot!(x, F[3], c="blue",   linewidth=1)
    plot!(x, F[4], c="red",    line=:dash)
    plot!(x, F[5], c="orange", linewidth=1)
    plot!(x, F[6], c="blue",   line=:dash)
    title!(title)
    xlabel!("x")
    ylabel!("p(x)")

    # axis limit
    P = plot!(xlims=(-1.0,1.0), ylims=(-5.0, 5.0))
    display(P)
end

function demo()
    P = PolynomialFunction(LahTriangle(6))
    PolyPlot(P, "Lah polynomials")
end

demo()

end # module
