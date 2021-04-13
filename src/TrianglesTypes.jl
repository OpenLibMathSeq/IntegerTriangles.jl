# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

using Nemo
import Base.sum

abstract type AbstractSequence end
abstract type AbstractTriangle end

const Seq{T} = Array{T,1}

const ℤInt  = Nemo.fmpz  # (alias for Nemo.fmpz)
const ℚInt  = Nemo.fmpq  # (alias for Nemo.fmpq)

const ℤSeq = Seq{ℤInt}  # (alias for Array{fmpz, 1})
const ℚSeq = Seq{ℚInt}  # (alias for Array{fmpq, 1})

const ℤTri = Seq{ℤSeq}  # (alias for Array{Array{fmpz, 1}, 1})
const ℚTri = Seq{ℚSeq}  # (alias for Array{Array{fmpq, 1}, 1})

# -------------

# ZZ(n)    # (constructor for fmpz, defined in Nemo)
# QQ(n, k) # (constructor for fmpq, defined in Nemo)

ZSeq(len::Int) = ℤSeq(undef, len) # (constructor for Array{fmpz, 1})
QSeq(len::Int) = ℚSeq(undef, len) # (constructor for Array{fmpq, 1})

function ZTri(dim::Int; reg=false) # (constructor for Array{Array{fmpz, 1}, 1})
    reg ? ZSeq.(1:dim) : ℤTri(undef, dim)
end

function QTri(dim::Int; reg=false) # (constructor for Array{Array{fmpq, 1}, 1})
    reg ? QSeq.(1:dim) : ℚTri(undef, dim)
end

ZTri(dim, f::Function) = f.(0:dim-1)
ZTri(T::AbstractTriangle) = [row for row ∈ T]
    
# ---------------

const ℤPoly = Nemo.fmpz_poly # (alias for Nemo.fmpz_poly)
const ℚPoly = Nemo.fmpq_poly # (alias for Nemo.fmpq_poly)

const ℤPolySeq = Seq{ℤPoly} # (alias for Array{fmpz_poly, 1})
const ℚPolySeq = Seq{ℚPoly} # (alias for Array{fmpq_poly, 1})

const ℤPolyTri = Seq{ℤPolySeq} # (alias for Array{Array{fmpz_poly, 1}, 1})
const ℚPolyTri = Seq{ℚPolySeq} # (alias for Array{Array{fmpq_poly, 1}, 1})

# ---------------

ZPolyRing(x) = PolynomialRing(ZZ, x)
QPolyRing(x) = PolynomialRing(QQ, x)

Base.sum(T::ℤTri) = [sum(row) for row ∈ T]
Base.sum(T::ℚTri) = [sum(row) for row ∈ T]

# import Nemo.degree
# degree(P::ℤPolySeq) = degree.(P)
# import Base.one
# Base.one(::Type{fmpq}) = QQ(1)
# Base.one(::Type{fmpz}) = ZZ(1)

