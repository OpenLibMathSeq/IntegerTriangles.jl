EvenSum:   A011782 [1, 1, 2, 4, 8, 16, 32, 64, 128, 256]
OddSum:    A131577 [0, 1, 2, 4, 8, 16, 32, 64, 128, 256]

A090192: 1,  1, 0, -1, 0,  2, 0, -5, 0,  14,  0, -42, 0,  
A097331: 1,  1, 0,  1, 0,  2, 0,  5, 0,  14,  0,  42, 0,
A105523: 1, -1, 0,  1, 0, -2, 0,  5, 0, -14,  0,  42, 0,
A126120: X,  1, 0,  1, 0,  2, 0,  5, 0,  14,  0,  42, 0,
A210628: 1, -1, 0, -1, 0, -2, 0, -5, 0, -14,  0, -42, 0,

A136011	Irregular triangle read by rows, Stirling numbers 
Println.(DiagonalTriangle(StirlingSetTriangle(16)))
diagonal triangle Stirling set numbers 
[1]
[0]
[0, 1]
[0, 1]
[0, 1, 1]
[0, 1, 3]
[0, 1, 7, 1]
[0, 1, 15, 6]

# Eulerian
DiagSum:   A000800 [X, 1, 1, 1, 2, 5, 13, 38, 125, 449, 1742]
DiagSum:   nothing [1, 0, 1, 1, 2, 5, 13, 38, 125, 449]

Tail comparison
