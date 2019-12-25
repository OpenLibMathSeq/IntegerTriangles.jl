# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

tstdir = realpath(joinpath(dirname(@__FILE__)))
srcdir = joinpath(dirname(tstdir), "src")
tstdir ∉ LOAD_PATH && push!(LOAD_PATH, tstdir)
srcdir ∉ LOAD_PATH && push!(LOAD_PATH, srcdir)
module runtests

using Nemo 
using IntegerTriangles, IntegerTrianglesLib, IntegerTrianglesExamples

profile(10, false)

end # module
