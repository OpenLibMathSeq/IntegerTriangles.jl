
abstract type AbstractSequence end
abstract type AbstractTriangle end

const ℤInt = fmpz
const ℤSeq = Array{ℤInt,1}
const ℤTri = Array{ℤSeq,1}
const ℚInt = fmpq
const ℚSeq = Array{ℚInt,1}
const ℚTri = Array{ℚSeq,1}
const ℤPolySeq = Array{fmpz_poly,1}
const ℚPolySeq = Array{fmpq_poly,1}
