# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module TrianglesPlot

using TrianglesBase, TrianglesExamples
using Plots; gr()

function PolyPlot(F, title)
    x = -2.0:0.05:1.0
    plot(x,  F[1], c="black",  linewidth=1)
    plot!(x, F[2], c="green",  line=:dash)
    plot!(x, F[3], c="blue",   linewidth=1)
    plot!(x, F[4], c="red",    line=:dash)
    plot!(x, F[5], c="orange", linewidth=1)
    plot!(x, F[6], c="blue",   line=:dash)
    plot!(x, F[7], c="black",  linewidth=1)
    title!(title)
    xlabel!("x")
    ylabel!("p(x)")

    # axis limit
    P = plot!(xlims=(-2.0, 1.0), ylims=(-5.0, 5.0))
    display(P)
end

# START-TEST-########################################################

function test()
end

function demo()
    # P = PolynomialFunction(LahTriangle(7))
    # PolyPlot(P, "Lah polynomials")
    # P = PolynomialFunction(EulerianTriangle(7))
    # PolyPlot(P, "Eulerian polynomials")
    # P = PolynomialFunction(LaguerreTriangle(7))
    # PolyPlot(P, "Laguerre polynomials")
    # P = PolynomialFunction(CatalanTriangle(7))
    # PolyPlot(P, "Catalan polynomials")
    # P = PolynomialFunction(MotzkinTriangle(7))
    # PolyPlot(P, "Motzkin polynomials")
    P = PolynomialFunction(NarayanaTriangle(7))
    PolyPlot(P, "Narayana polynomials")
    # P = PolynomialFunction(JacobsthalTriangle(7))
    # PolyPlot(P, "Jacobsthal polynomials")
    # P = PolynomialFunction(FibonacciTriangle(7))
    # PolyPlot(P, "Fibonacci polynomials")
end

function perf()
end

function main()
    test()
    # this might take a while
    demo()
    perf()
end

main()

end # module
