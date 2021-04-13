<img src="https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/docs/src/TrianglesLogo.png">

[![Build status](https://travis-ci.org/OpenLibMathSeq/IntegerTriangles.jl.svg?branch=master)](https://travis-ci.org/OpenLibMathSeq/IntegerTriangles.jl)
--

The package is tested against Julia 1.6.0 on Linux, macOS, and Windows64.

Very early in the development cycle, version 0.2.0.

## Julia implementations of integer triangles.

We give a framework for computing mathematical integer triangles and use
it to create "Integer Triangle Trait Cards"™. 

A trait card is a compilation of the essential characteristics of an integer triangle, 
whereby we understand the characteristics of a triangle to be integer sequences that 
can be obtained from the triangle by elementary transformations.

To see what you can expect start by executing

    using IntegerTriangles
    dim = 8
    TraitCard(BinomialTriangle, BinomialTransform, dim)
.
Overview tables can be automatically generated for a variety of triangles and traits.

| A-Number | Triangle   | Form | Function  | Sequence                                    | 
| -------- | ---------- | ---- | --------- | ------------------------------------------- |
| A000302  | Binomial   | Std  | PolyVal3  | 1, 4, 16, 64, 256, 1024, 4096, 16384        |
| A001333  | SchroederB | Inv  | AltSum    | 1, -1, 3, -7, 17, -41, 99, -239             |
| A006012  | SchroederL | Inv  | AltSum    | 1, -2, 6, -20, 68, -232, 792, -2704         |
| A026302  | Motzkin    | Rev  | Central   | 1, 2, 9, 44, 230, 1242, 6853, 38376         |
| A103194  | Laguerre   | Std  | TransNat0 | 0, 1, 6, 39, 292, 2505, 24306, 263431       |
| A111884  | Lah        | Std  | TransAlts | 1, -1, -1, -1, 1, 19, 151, 1091             |
| nothing  | Laguerre   | Rev  | TransNat1 | 1, 3, 15, 97, 753, 6771, 68983, 783945      |

.

You can also look at the demo [notebook](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/demos/IntegerTriangles.ipynb).

An introduction to the project can be found in:

* [Tutorial part 1](http://luschny.de/julia/triangles/TutorialTrianglesPart1.html)
* [Tutorial part 2](http://luschny.de/julia/triangles/TutorialTrianglesPart2.html)
* [Tutorial part 3](http://luschny.de/julia/triangles/TutorialTrianglesPart3.html)
