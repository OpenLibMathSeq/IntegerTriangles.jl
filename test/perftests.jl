# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

# Version of: UTC 2021-05-21 16:37:12
# 07a5db10-ba42-11eb-2767-059793fdd14d

# Do not edit this file, it is generated from the modules and will be overwritten!
# Edit the modules in the src directory and build this file with BuildTriangles.jl!

tstdir = realpath(joinpath(dirname(@__FILE__)))
srcdir = joinpath(dirname(tstdir), "src")
tstdir ∉ LOAD_PATH && push!(LOAD_PATH, tstdir)
srcdir ∉ LOAD_PATH && push!(LOAD_PATH, srcdir)
module perftests
using IntegerTriangles, Dates, InteractiveUtils
InteractiveUtils.versioninfo()
start = Dates.now()
# +++ TrianglesBase.jl +++
# +++ TrianglesExamples.jl +++
T = LaguerreTriangle(8)
Println.(PolyTriangle(T))
Println.(PolyArray(T))
Println.(Inverse(PolyTriangle(T)))
Println.(FubiniTriangle(8)) 
Println.(DArcaisTriangle(8)) 
# +++ TrianglesExplorer.jl +++
# +++ TrianglesPlot.jl +++
# +++ TrianglesTables.jl +++
# +++ TrianglesTraitCard.jl +++
# +++ TrianglesUtils.jl +++
GetSeqnum(ℤInt[1, 1, -2, 3, -3, 3, -5, 7, -6, 6, -10, 
12, -11, 13, -17, 20, -21, 21, -27, 34, -33, 36, -46, 51, 
-53, 58, -68, 78, -82, 89, -104]) |> println
GetSeqnum(ℤInt[0, 1, 1, 1, 2, 1, 2, 1, 5, 2, 2, 1, 5, 1, 
2, 1, 14, 1, 5, 1, 5, 2, 2, 1, 15, 2, 2, 5, 4, 1, 4, 1, 51, 
1, 2, 1, 14, 1, 2, 2, 14, 1, 6, 1, 4, 2, 2, 1, 52]) |> println
GetSeqnum(ℤInt[1, 1, 7, 37, 241, 2101, 18271, 201097, 2270017, 
29668681, 410815351, 6238931821, 101560835377, 1765092183037, 
32838929702671, 644215775792401]) |> println
GetSeqnum(ℤInt[1, 1, 1, 7, 37, 241, 2101, 18271, 201097, 2270017, 
29668681, 410815351, 6238931821, 101560835377, 1765092183037, 
32838929702671, 644215775792401]) |> println
GetSeqnum(ℤInt[0, 1, 2, 7, 44, 361, 3654, 44207, 622552, 10005041, 
180713290, 3624270839, 79914671748, 1921576392793, 50040900884366, 
1403066801155039, 42142044935535536]) |> println
GetSeqnum(ℤInt[0, 70, 3783, 338475, 40565585, 6061961733, 
1083852977811, 225615988054171, 53595807366038234, 14308700593468127485, 
4241390625289880226714]) |> println
GetSeqnumUri(ℤInt[1, 1, 7, 37, 241, 2101, 18271, 201097, 2270017, 
29668681, 410815351, 6238931821, 101560835377, 1765092183037, 
32838929702671, 644215775792401]) |> println
stop = Dates.now()
tdiff = stop - start
println("\nJulia version: " * string(VERSION) )
println(start)
println("Total test time: ", tdiff)
end # module
