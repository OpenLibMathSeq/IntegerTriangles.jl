
##   🔶  [TrianglesBase](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesBase.jl)

Basic definitions used in the library IntegerTriangles.
We consider the following traits of an triangle:

```
Flat, Reverse, Inverse, RevInv, InvRev, DiagTri, 

PolyTri, Sum, EvenSum, OddSum, AltSum, DiagSum, 

Middle, Central, LeftSide, RightSide, PosHalf, 

NegHalf, PolyVal2, PolyVal3, BinConv, IBinConv, 

TransSqrs, TransNat0, TransNat1
```

##   🔶  [TrianglesExamples](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesExamples.jl)

Recurrences and iterations for some triangles.
The examples given are:
```
Aitken, Bessel1, Binomial, Catalan, DArcais, 

Delannoy, Eulerian, EulerianSO2, EulerSec, 

EulerTan, Euler, FallingFact, Fibonacci, 

Fine, Fubini, Hermite, Laguerre, Lah, Motzkin, 

Narayana, Rencontres, RisingFact, SchröderB, 

SchröderL, StirlingCycle, StirlingSet, Trinomial, 

TTree, Uni, Worpitzky
```

##   🔶  [TrianglesExplorer](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesExplorer.jl)

Explore integer triangles via their traits.
The traits and their references will be saved 
as csv-files in the data directory.

##   🔶  [TrianglesPlot](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesPlot.jl)

Plotting triangles.

##   🔶  [TrianglesTables](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesTables.jl)

Pretty printing of triangles trait cards.

| A-number | Triangle   | Form | Function  | Sequence                                    |
|----------|------------|------|-----------|---------------------------------------------|
| A000302  | Binomial   | Std  | PolyVal3  | 1, 4, 16, 64, 256, 1024, 4096, 16384        |
| A001333  | SchroederB | Inv  | AltSum    | 1, -1, 3, -7, 17, -41, 99, -239             |
| A006012  | SchroederL | Inv  | AltSum    | 1, -2, 6, -20, 68, -232, 792, -2704         |
| A026302  | Motzkin    | Rev  | Central   | 1, 2, 9, 44, 230, 1242, 6853, 38376         |
| A103194  | Laguerre   | Std  | TransNat0 | 0, 1, 6, 39, 292, 2505, 24306, 263431       |
| A111884  | Lah        | Std  | TransAlts | 1, -1, -1, -1, 1, 19, 151, 1091             |
| nothing  | Laguerre   | Rev  | TransNat1 | 1, 3, 15, 97, 753, 6771, 68983, 783945      |

##   🔶  [TrianglesTraitCard](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesTraitCard.jl)

Build the trait card of one or many triangles with Anums.
```
julia> TraitCard(LaguerreTriangle)
Triangle:  A021009 [1, 1, 1, 2, 4, 1, 6, 18, 9, 1]
Reverse:   A021010 [1, 1, 1, 1, 4, 2, 1, 9, 18, 6]
Inverse:   A021009 [1, -1, 1, 2, -4, 1, -6, 18, -9, 1]
RevInv:    A021010 [1, 1, -1, 1, -4, 2, 1, -9, 18, -6]
Diagonal:  A084950 [1, 1, 2, 1, 6, 4, 24, 18, 1, 120]
Sum:       A002720 [1, 2, 7, 34, 209, 1546, 13327, 130922, 1441729, 17572114]
EvenSum:   A331325 [1, 1, 3, 15, 97, 745, 6571, 65359, 723969, 8842257]
OddSum:    A331326 [0, 1, 4, 19, 112, 801, 6756, 65563, 717760, 8729857]
AltSum:    A009940 [1, 0, -1, -4, -15, -56, -185, -204, 6209, 112400]
DiagSum:   C001040 [1, 1, 3, 10, 43, 225, 1393, 9976, 81201, 740785]
Central:   A295383 [1, 4, 72, 2400, 117600, 7620480, 614718720, 59364264960]
LeftSide:  A000142 [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
RightSide: A000012 [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
PosHalf:   A025167 [1, 3, 17, 139, 1473, 19091, 291793, 5129307, 101817089]
NegHalf:   A025166 [1, -1, 1, 7, -127, 1711, -23231, 334391, -5144063, 84149983]
TransUnos: A002720 [1, 2, 7, 34, 209, 1546, 13327, 130922, 1441729, 17572114]
TransSqrs: A105219 [0, 1, 8, 63, 544, 5225, 55656, 653023, 8379008, 116780049]
TransNat0: A103194 [0, 1, 6, 39, 292, 2505, 24306, 263431, 3154824, 41368977]
TransNat1: C000262 [1, 3, 13, 73, 501, 4051, 37633, 394353, 4596553, 58941091]
PolyVal2:  A087912 [1, 3, 14, 86, 648, 5752, 58576, 671568, 8546432, 119401856]
PolyVal3:  A277382 [1, 4, 23, 168, 1473, 14988, 173007, 2228544, 31636449]
```

##   🔶  [TrianglesUtils](https://github.com/OpenLibMathSeq/IntegerTriangles.jl/blob/master/src/TrianglesUtils.jl)

* Search the OEIS for a sequence. 
* Save a file in the 'data' directory in json format. 

* Triangle in standard format (without typeinfo):
```
[1]
[1, 1]
[2, 4, 1]
[6, 18, 9, 1]
[24, 96, 72, 16, 1]
[120, 600, 600, 200, 25, 1]
[720, 4320, 5400, 2400, 450, 36, 1]
```
* Triangle as a nested array:
```
[[1], [1, 1], [2, 4, 1], [6, 18, 9, 1], [24, 96, 72, 16, 1], [120, 600, 600, 200, 25, 1], [720, 4320, 5400, 2400, 450, 36, 1]]
```
* Triangle in flattened format:
```
1, 1, 1, 2, 4, 1, 6, 18, 9, 1, 24, 96, 72, 16, 1, 120, 600, 600, 200, 25, 1, 720, 4320, 5400, 2400, 450, 36, 1,
```
* Triangle in info format with sequence ID:
```
[A021009] 1, 1, 1, 2, 4, 1, 6, 18, 9, 1, 24, 96, 72, 16, 1, ...
```
* Triangle in mapped format:
```
0 ↦ 1
1 ↦ 1
2 ↦ 1
3 ↦ 2
4 ↦ 4
5 ↦ 1
6 ↦ 6
7 ↦ 18
8 ↦ 9
9 ↦ 1
10 ↦ 24
11 ↦ 96
12 ↦ 72
13 ↦ 16
14 ↦ 1
```
