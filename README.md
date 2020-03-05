<img src="https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/docs/src/TrianglesLogo.png">

[![Build status](https://travis-ci.org/OpenLibMathSeq/IntegerTriangles.jl.svg?branch=master)](https://travis-ci.org/OpenLibMathSeq/IntegerTriangles.jl)
--

The package is tested against Julia 1.3.1 and above on Linux, macOS, and Windows64.

Very early in the development cycle, version 0.1.0.

## Julia implementations of integer triangles.

We give a framework for computing mathematical integer triangles and use
it to create "Integer Triangle Trait Cards"™. A trait card is a compilation of the essential characteristics of an integer triangle, whereby we understand the characteristics of a triangle to be integer sequences that can be obtained from the triangle by elementary transformations.

To see what you can expect start by executing

    using IntegerTriangles
    dim = 8
    TraitCard(BinomialTriangle, BinomialTransform, dim)

You can also look at the demo [notebook](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/demos/IntegerTriangles.ipynb).

An introduction to the project can be found in:

* [Tutorial part 1](http://luschny.de/julia/triangles/TutorialTrianglesPart1.html)
* [Tutorial part 2](http://luschny.de/julia/triangles/TutorialTrianglesPart2.html)
* [Tutorial part 3](http://luschny.de/julia/triangles/TutorialTrianglesPart3.html)
