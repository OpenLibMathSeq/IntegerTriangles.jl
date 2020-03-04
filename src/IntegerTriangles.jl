# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

# Version of: UTC 2020-03-04 10:37:37
# c8f5d530-5dfb-11ea-2824-53195ebeacd6

# Do not edit this file, it is generated from the modules and will be overwritten!
# Edit the modules in the src directory and build this file with BuildTriangles.jl!

__precompile__()
module IntegerTriangles
using Nemo, HTTP, DocStringExtensions, Test
export 
A331333Triangle,
AbstractSequence,
AbstractTriangle,
AltSum,
AnumSearch,
AnumToFingerPrint,
BernoulliPolynomial,
Binomial,
BinomialTransform,
BinomialTriangle,
Catalan,
CatalanBallot,
CatalanTransform,
CatalanTriangle,
Central,
Coefficients,
DeléhamΔ,
DiagSum,
DiagonalTriangle,
EgfExpansionCoeff,
EgfExpansionPoly,
EulerianTransform,
EulerianTriangle,
Evaluate,
EvenSum,
ExtCatalanTriangle,
FibonacciTransform,
FibonacciTriangle,
Flat,
InverseTriangle,
JacobsthalTransform,
JacobsthalTriangle,
Laguerre,
LaguerreTransform,
LaguerreTriangle,
LahNumbers,
LahTransform,
LahTriangle,
LeftSide,
LinMap,
Middle,
MotzkinTransform,
MotzkinTriangle,
NarayanaTransform,
NarayanaTriangle,
NegHalf,
OddSum,
OrthoPoly,
PascalTriangle,
PolyArray,
PolyTriangle,
Polynomial,
PolynomialFunction,
PosHalf,
Println,
RecTriangle,
ReversedPolynomial,
RightSide,
RiordanSquare,
SchroederBigTransform,
SchroederBigTriangle,
SchröderB,
SchröderL,
Show,
SimilarSeq,
StirlingCycleTransform,
StirlingSetTransform,
Telescope,
TraitCard,
ℚ,
ℚInt,
ℚPolyRing,
ℚPolySeq,
ℚSeq,
ℚTri,
ℤ,
ℤInt,
ℤPolyRing,
ℤPolySeq,
ℤSeq,
ℤTri,
I008279,T008279,
I048993,T048993,
I094587,T094587,
I132393,T132393,
I225478,T225478,
I271703,T271703
# *** Aliases.jl ****************
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
# *** SeqFingerPrint.jl ****************
function makeFingerPrint(str::String)
if length(str) < 32
return "XXXXXXXX"
end
a = parse(UInt64, str[1:16],  base=16)
b = parse(UInt64, str[17:32], base=16)
str2 = string(xor(a, ~b))
a = parse(UInt32, str2[1:8],  base=16)
b = parse(UInt32, str2[9:16], base=16)
string(xor(a, ~b), base=16, pad=8)
end
function SimilarSeq(seq::ℤSeq)
str = ""
for term in seq
if term < 0 str *= "a" end
str *= string(abs(term))
if length(str) > 34 break end
end
makeFingerPrint(str)
end
function SimilarSeq(str::String)
str = replace(str, "-" => "a")
makeFingerPrint(str)
end
SimilarSeq(S::ℤTri) = SimilarSeq(Flat(S))
const srcdir = realpath(joinpath(dirname(@__FILE__)))
const ROOTDIR = dirname(srcdir)
const datadir = joinpath(ROOTDIR, "data")
oeis_path() = joinpath(datadir, "stripped")
tabl_path() = joinpath(datadir, "LookUpTable.txt")
is_oeis_installed() = isfile(oeis_path())
function oeis_notinstalled()
if !is_oeis_installed()
@warn("OEIS data not installed! Download stripped.gz from oeis.org,")
@warn("expand it and put it in the directory ../data.")
return true
end
return false
end
function AnumToFingerPrint(anum::String)
if !occursin(r"^A[0-9]{6}$", anum)
@warn(anum * " is not a valid A-number!")
return []
end
oeis_notinstalled() && return []
data = open(oeis_path(), "r")
for ln ∈ eachline(data)
if startswith(ln, anum)
A = replace(ln, "," => "c")[8:end]
return SimilarSeq(A)
end
end
close(data)
return "XXXXXXXX"
end
function AnumSearch(FP, verbose=false)
matches = 0
anum = ""
verbose && println("Searching for: ", FP)
data = open(tabl_path(), "r")
for line ∈ eachline(data)
index = findfirst(FP, line)
index === nothing && continue
anum *= line[12:end]
verbose && println(line[12:end])
matches += 1
end
close(data)
verbose && println("Matches: ", matches)
anum
end
function AllFingerPrints()
data = open(oeis_path(), "r")
tabl = open(tabl_path(), "w")
for n in 1:331969
anum = "A" * string(n, base = 10, pad = 6)
for ln ∈ eachline(data)
if startswith(ln, anum)
A = replace(ln, "," => "c")[8:end]
FP = SimilarSeq(A)
println(tabl, FP, " -> ", anum)
break
end
end
end
close(tabl)
close(data)
end
# *** TrianglesBase.jl ****************
import Base.sum
include("Aliases.jl")
ℤ(n) = ZZ(n)
ℚ(z, n) = ℤ(z) // ℤ(n)
ℤSeq(len) = ℤSeq(undef, len)
ℚSeq(len) = ℚSeq(undef, len)
function ℤTri(dim::Int; reg=false)
reg ? ℤSeq.(1:dim) : ℤTri(undef, dim)
end
ℤTri(dim, f::Function) = f.(0:dim-1)
ℚTri(dim) = ℚSeq.(1:dim)
ℚTri(dim, f::Function) = f.(0:dim-1)
ℤPolyRing(x) = PolynomialRing(ZZ, x)
ℚPolyRing(x) = PolynomialRing(QQ, x)
Base.sum(T::ℤTri) = [sum(row) for row ∈ T]
function DiagonalTriangle(T::ℤTri)
dim = length(T)
U = ℤTri(dim)
for n = 1:dim
R = ℤSeq(div(n + 1, 2))
for k = 0:div(n - 1, 2)
R[k+1] = T[n-k][k+1]
end
U[n] = R
end
U
end
EvenSum(A) = sum(A[1:2:end])
OddSum(A) = sum(A[2:2:end])
AltSum(A) = EvenSum(A) - OddSum(A)
Middle(A) = A[div(end + 1, 2)]
LeftSide(A) = A[1]
RightSide(A) = A[end]
EvenSum(T::ℤTri) = EvenSum.(T)
OddSum(T::ℤTri) = OddSum.(T)
AltSum(T::ℤTri) = EvenSum(T) - OddSum(T)
DiagSum(T::ℤTri) = sum(DiagonalTriangle(T))
Middle(T::ℤTri) = Middle.(T)
Central(T::ℤTri) = Middle.(T[1:2:end])
LeftSide(T::ℤTri) = LeftSide.(T)
RightSide(T::ℤTri) = RightSide.(T)
function Polynomial(S::ℤSeq)
R, x = ℤPolyRing("x")
sum(c * x^(k - 1) for (k, c) ∈ enumerate(S))
end
Polynomial(T::ℤTri) = Polynomial.(T)
ReversedPolynomial(S::ℤSeq) = Polynomial(reverse(S))
ReversedPolynomial(T::ℤTri) = ReversedPolynomial.(T)
function PolynomialFunction(s)
y -> sum(Float64(c) * y^(k - 1)
for (k, c) ∈ enumerate(s))
end
PolynomialFunction(T::ℤTri) = PolynomialFunction.(T)
import Nemo.numerator
numerator(T::ℚTri) = [numerator.(t) for t ∈ T]
Coefficients(p) = coeff.(p, 0:degree(p))
Coefficients(P::AbstractArray) = Coefficients.(P)
function Evaluate(p::Nemo.fmpz_poly, x)
Q, q = PolynomialRing(QQ, "q")
subst(Q(p), x)
end
Evaluate(P::ℤPolySeq, x) = Evaluate.(P, x)
Evaluate(P::ℚPolySeq, x) = Evaluate.(P, x)
function Transpose!(T::ℤTri)
for n in 1:length(T), k in 1:n
@inbounds T[n][k], T[k][n] = T[k][n], T[n][k]
end
T
end
PosHalf(p) = numerator(2^degree(p) * Evaluate(p, 1 // 2))
NegHalf(p) = numerator((-2)^degree(p) * Evaluate(p, -1 // 2))
PosHalf(T::ℤTri) = PosHalf.(Polynomial(T))
NegHalf(T::ℤTri) = NegHalf.(Polynomial(T))
PosHalf(P::ℤPolySeq) = PosHalf.(P)
NegHalf(P::ℤPolySeq) = NegHalf.(P)
"""
Return the number of permutations of n letters, ``n! = ∏(1, n)``,
the factorial of ``n``. (Nota: The notation is a shortcut. The use of '!' breaks
Julia naming conventions, therefore use it only internally.)
$(SIGNATURES)
"""
LinMap(F::Function, V::ℤSeq, n) = sum(F(n - 1)[k] * V[k] for k = 1:n)
LinMap(F::Function, V::ℤSeq) = LinMap(F, V, length(V))
LinMap(M::ℤTri, V::ℤSeq, n) = sum(M[n][k] * V[k] for k = 1:n)
LinMap(M::ℤTri, V::ℤSeq) = (n -> LinMap(M, V, n)).(1:length(V))
Telescope(A) = (A[1:k] for k = 1:size(A, 1))
F!(n) = Nemo.factorial(ZZ(n))
Binomial(n, k) = Nemo.binomial(ℤ(n), ℤ(k))
Binomial(n) = [Binomial(n, k) for k = 0:n]
Binomial(A::ℤSeq) = LinMap(Binomial, A)
BinomialTriangle(dim) = [Binomial(n) for n = 0:dim-1]
BinomialTransform(A::ℤSeq) = Binomial.(Telescope(A))
Laplace(s, k) = factorial(k) * coeff(s, k)
function EgfExpansion(prec, gf::Function, coeff = true)
R, x = ℚPolyRing("x")
S, t = PowerSeriesRing(R, prec + 1, "t")
ser = gf(x, t)
P = Laplace.(ser, 0:prec-1)
coeff ? Coefficients.(P) : P
end
EgfExpansionCoeff(prec, gf::Function) = EgfExpansion(prec, gf, true)
EgfExpansionPoly(prec, gf::Function) = EgfExpansion(prec, gf, false)
function OrthoPoly(dim::Int, s::Function, t::Function)
T = ℤTri(dim, reg=true) # regular triangle
for n ∈ 1:dim T[n][n] = 1 end
for n ∈ 2:dim
u(k) = k == 0 || k == n ? 0 : T[n-1][k]
for k ∈ 1:n-1
T[n][k] = (
u(k - 1)
+ s(k - 1) * u(k) +
t(k) * u(k + 1)
)
end
end
T
end
function DeléhamΔ(dim::Int, s::Function, t::Function)
T = ℤTri(dim)
R, x = ℤPolyRing("x")
A = [R(s(k) + x * t(k)) for k ∈ 0:dim-2]
C = [R(1) for i ∈ 0:dim]
C[1] = R(0)
m = 1
for k ∈ 0:dim-1
for j ∈ k+1:-1:2
C[j] = C[j-1] + C[j+1] * A[j-1]
end
T[m] = [coeff(C[2], j) for j ∈ 0:k]
m += 1
end
T
end
function RiordanSquare(dim::Int, s::Function)
T = ℤTri(dim, reg=true)
for n ∈ 0:dim-1
T[n+1][1] = s(n)
end
for k ∈ 1:dim-1, m ∈ k:dim-1
T[m+1][k+1] = sum(T[j][k] * T[m-j+2][1] for j ∈ k:m)
end
T
end
function ExpRiordanSquare(dim::Int, s::Function)
R = RiordanSquare(dim, s)
u = ZZ(1)
for k ∈ 1:dim-1
u *= k
for m ∈ 1:k
j = (m == 1 ? u : div(j, m - 1))
R[k+1][m] *= j
end
end
R
end
function InverseTriangle(T)
dim = length(T)
M = zeros(QQ, dim, dim)
for n = 1:dim, k = 1:n
M[n, k] = QQ(T[n][k])
end
S = MatrixSpace(QQ, dim, dim)
invM = try
inv(S(M))
catch e
if isa(e, Exception)
println("Matrix not invertible\n")
return []
end
end
for n = 1:dim
for k = 1:n
if denominator(invM[n, k]) != 1
println("Inverse not in MatrixSpace(ZZ).")
println(invM)
return []
end
end
end
[[numerator(invM[n, k]) for k = 1:n] for n = 1:dim]
end
function Flat(T::ℤTri)
Empty(s) = isempty(s) ? [ZZ(0)] : s
[z for t ∈ T for z ∈ Empty(t)]
end
function Println(io, v::AbstractVector, newline = true)
print(io, "[")
for (i, el) ∈ enumerate(v)
i > 1 && print(io, ", ")
print(io, el)
end
newline ? println(io, "]") : print(io, "]")
end
Println(io, str::String) = println(io, str)
Println(T::ℤTri) = Println.(IOContext(stdout), T)
Println(T::ℤSeq) = Println(IOContext(stdout), T)
"""
A recursive triangle `RecTriangle` is a subtype of `AbstractTriangle`. The rows
of the triangle are generated by a function `gen(n, k, prevrow)` defined for
``n ≥ 0`` and ``0 ≤ k ≤ n``. The function returns value of type fmpz.

The parameter prevrow is a function which returns the values of `row(n-1)` of
the triangle and 0 if ``k < 0`` or ``k > n``. The function prevrow is provided
by an instance of `RecTriangle` and must not be defined by the user.
$(SIGNATURES)
"""
struct RecTriangle <: AbstractTriangle
dim::Int
A::Array{ℤInt}
gen::Function  # generating function
function RecTriangle(dim::Int, gen::Function)
dim <= 0 && throw(ArgumentError("dim has to be a positive integer."))
new(
dim,
fill(ℤ(0), dim),
(n::Int, k::Int, f::Function) -> gen(n, k, f)::fmpz,
)
end
end
function Base.iterate(T::RecTriangle)
top = T.gen(0, 0, () -> undef)
T.A[1] = ℤ(top)
([top], 1)
end
"""
Return the next row of the triangle.
$(SIGNATURES)
"""
function Base.iterate(T::RecTriangle, n)
@inline prevrow(A, n) = (k) -> (k < 0 || k > n) ? ZZ(0) : A[k+1]
n == T.dim && return nothing
F(n, k) = T.gen(n, k, prevrow(T.A, n))
row = [F(n, k) for k ∈ 0:n]
for k ∈ 1:n+1
T.A[k] = row[k]
end
(row, n + 1)
end
Base.length(R::RecTriangle) = R.dim
Base.eltype(R::RecTriangle) = fmpz
function PolyArray(T::ℤTri)
P = Polynomial(T)
dim = length(T)
U = ℤTri(dim)
for n = 1:dim
p = P[n]
eva = [Evaluate(p, k) for k in 0:dim-1]
U[n] = numerator.(eva)
end
U
end
function PolyTriangle(T::ℤTri)
A = PolyArray(T)
U = ℤTri(length(T))
for n = 1:length(T)
U[n] = [A[n-k][k+1] for k = 0:n-1]
end
U
end
# *** TrianglesExamples.jl ****************
function PrimeDivisors(n)
n < 2 && return fmpz[]
sort!([p for (p, e) ∈ factor(ZZ(n))])
end
const CacheLah = Dict{Int,Array{fmpz,1}}([0 => [ZZ(1)]])
function LahNumbers(n::Int64)
haskey(CacheLah, n) && return CacheLah[n]
prevrow = LahNumbers(n - 1)
row = ℤSeq(n + 1)
row[1] = 0
row[n+1] = 1
for k = 2:n
row[k] = prevrow[k-1] + prevrow[k] * (n + k - 2)
end
CacheLah[n] = row
end
LahNumbers(n, k) = LahNumbers(n + 1)[k+1]
function LahTriangle(size)
length(CacheLah) < size && LahNumbers(size)
[CacheLah[n] for n = 0:size-1]
end
LahNumbers(A::ℤSeq) = LinMap(LahNumbers, A, length(A))
LahTransform(A::ℤSeq) = LahNumbers.(Telescope(A))
G271703(x, t) = exp(t * divexact(x, 1 - t))
T271703(dim) = EgfExpansionCoeff(dim, G271703)
egfBernoulli(x, t) = divexact(t * exp(x * t), exp(t) - 1)
BernoulliPolynomial(n) = EgfExpansionPoly(n, egfBernoulli)
G278075(x, t) = divexact(1, 1 - x * (1 - exp(-t)))
FubiniPolynomial(n) = EgfExpansionPoly(n, G278075)
function MotzkinTriangle2(dim::Int)
T = ℤTri(dim)
for n = 1:dim
T[n][n] = 1
end
for n = 2:dim
u(k) = k == 0 || k == n ? 0 : T[n-1][k]
for k = 1:n-1
T[n][k] = u(k - 1) + u(k) + u(k + 1)
end
end
T
end
MotzkinTriangle(dim) = OrthoPoly(dim, n -> 1, n -> 1)
Motzkin(n) = MotzkinTriangle(n + 1)[n+1] # TODO!!
Motzkin(n, k) = Motzkin(n)[k+1]
Motzkin(A::ℤSeq) = LinMap(Motzkin, A, length(A))
MotzkinTransform(A::ℤSeq) = Motzkin.(Telescope(A))
CatalanTriangle(dim) = OrthoPoly(dim, n -> 0, n -> 1)
Catalan(n) = CatalanTriangle(n+1)[n+1] # TODO!!
Catalan(n::Int, k::Int) = Catalan(n)[k+1]
Catalan(A::ℤSeq) = LinMap(Catalan, A, length(A))
CatalanTransform(A::ℤSeq) = Catalan.(Telescope(A))
const CacheBallot = Dict{Tuple{Int,Int},fmpz}()
function CatalanBallot(n::Int, k::Int)
haskey(CacheBallot, (n, k)) && return CacheBallot[(n, k)]
(k > n || k < 0) && return ZZ(0)
n == k && return ZZ(1)
CacheBallot[(n, k)] = (
CatalanBallot(n - 1, k - 1) +
CatalanBallot(n - 1, k + 1) +
(iseven(n - k) ? 0 : CatalanBallot(n - 1, k))
)
end
CatalanBallot(n) = [CatalanBallot(n, k) for k ∈ 0:n]
ExtCatalanTriangle(dim) = [[CatalanBallot(n, k) for k = 0:n] for n = 0:dim-1]
bs(n) = iszero(n) ? 0 : isodd(n) ? 2 : 1
SchröderB(dim) = DeléhamΔ(dim, bs, n -> 0^n)
ls(n) = isodd(n) ? 2 : 1
SchröderL(dim) = DeléhamΔ(dim, ls, n -> 0^n)
"""
Recurrence for A132393, StirlingCycle numbers.
$(SIGNATURES)
"""
function R132393(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
(n - 1) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A048993, StirlingSet numbers.
$(SIGNATURES)
"""
function R048993(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
k * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A271703, Lah numbers.
$(SIGNATURES)
"""
function R271703(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
(k - 1 + n) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A094587, (Rising factorials).
$(SIGNATURES)
"""
function R094587(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
(n - k) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A008279. Number of permutations of n things k at a time.
(Falling factorials)
$(SIGNATURES)
"""
function R008279(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
prevrow(k) + k * prevrow(k - 1)
end
"""
Iterates over the first n rows of `A132393`.
Triangle of unsigned Stirling numbers of the first kind.
$(SIGNATURES)
"""
I132393(n) = RecTriangle(n, R132393)
T132393(dim) = ℤTri(I132393(dim))
StirlingCycleTriangle(dim) = T132393(dim)
StirlingCycle(n) = StirlingCycleTriangle(n + 1)[n+1]
StirlingCycle(n, k) = StirlingCycle(n)[k+1]
StirlingCycle(A::ℤSeq) = LinMap(StirlingCycle, A, length(A))
StirlingCycleTransform(A::ℤSeq) = StirlingCycle.(Telescope(A))
"""
Iterates over the first n rows of `A048993`.
Triangle of Stirling numbers of 2nd kind.
$(SIGNATURES)
"""
I048993(n) = RecTriangle(n, R048993)
StirlingSet(n) = StirlingSetTriangle(n + 1)[n+1]
StirlingSet(n, k) = StirlingSet(n)[k+1]
StirlingSet(A::ℤSeq) = LinMap(StirlingSet, A, length(A))
StirlingSetTransform(A::ℤSeq) = StirlingSet.(Telescope(A))
"""
Iterates over the first n rows of `A094587`.
$(SIGNATURES)
"""
I094587(n) = RecTriangle(n, R094587)
T094587(dim) = ℤTri(I094587(dim))
"""
Iterates over the first n rows of `A008279`.
$(SIGNATURES)
"""
I008279(n) = RecTriangle(n, R008279)
T008279(dim) = ℤTri(I008279(dim))
function R225478(n, k, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
4 * prevrow(k - 1) + (4 * n - 1) * prevrow(k)
end
I225478(dim) = RecTriangle(dim, R225478)
T225478(dim) = ℤTri(I225478(dim))
function R007318(n, k, prevrow::Function)
(k == 0 && n == 0) && return fmpz(1)
prevrow(k - 1) + prevrow(k)
end
I007318(dim) = RecTriangle(dim, R007318)
PascalTriangle(dim) = ℤTri(I007318(dim))
function SchroederBig(n, k)
div(
(k + 1) * sum(Binomial(n + 1, k + j + 1) *
Binomial(n + j, j) for j = 0:(n-k)),
n + 1,
)
end
function SchroederBigTriangle(dim)
[[SchroederBig(n, k) for k = 0:n] for n = 0:dim-1]
end
SchroederBig(n) = SchroederBigTriangle(n + 1)[n+1]
SchroederBig(A::ℤSeq) = LinMap(SchroederBig, A, length(A))
SchroederBigTransform(A::ℤSeq) = SchroederBig.(Telescope(A))
FJ(n, k) = n <= 2 ? 1 : FJ(n - 1, k) + k * FJ(n - 2, k)
JacobsthalTriangle(dim) = RiordanSquare(dim, n -> FJ(n, 2))
Jacobsthal(n) = JacobsthalTriangle(n + 1)[n+1]
Jacobsthal(n, k) = Jacobsthal(n)[k+1]
Jacobsthal(A::ℤSeq) = LinMap(Jacobsthal, A, length(A))
JacobsthalTransform(A::ℤSeq) = Jacobsthal.(Telescope(A))
FibonacciTriangle(dim) = RiordanSquare(dim, n -> FJ(n, 1))
Fibonacci(n) = FibonacciTriangle(n + 1)[n+1]
Fibonacci(n, k) = Fibonacci(n)[k+1]
Fibonacci(A::ℤSeq) = LinMap(Fibonacci, A, length(A))
FibonacciTransform(A::ℤSeq) = Fibonacci.(Telescope(A))
const CacheA331333 = Dict{Tuple{Int,Int},fmpz}()
function A331333Rec(n, k)
haskey(CacheA331333, (n, k)) && return CacheA331333[(n, k)]
if k == 0
r = ZZ(1)
elseif k > n
r = ZZ(0)
else
r = 2 * A331333Rec(n - 1, k - 1) // k +
A331333Rec(n - 1, k)
end
CacheA331333[(n, k)] = numerator(factorial(n) * r)
end
A331333Triangle(dim) = [[A331333Rec(n, k) for k = 0:n] for n = 0:dim-1]
A331333(n) = A331333Triangle(n + 1)[n+1]
A331333(n, k) = A331333(n)[k+1]
A331333(A::ℤSeq) = LinMap(A331333, A, length(A))
A331333Transform(A::ℤSeq) = A331333.(Telescope(A))
const CacheEulerian = Dict{Tuple{Int,Int},fmpz}()
function EulerianNumbers(n, k)
haskey(CacheEulerian, (n, k)) && return CacheEulerian[(n, k)]
CacheEulerian[(n, k)] = if (k == 0) && (n >= 0)
ZZ(1)
elseif (k < 0) || (k > n)
ZZ(0)
else
(n - k) * EulerianNumbers(n - 1, k - 1) +
(k + 1) * EulerianNumbers(n - 1, k)
end
end
EulerianTriangle(dim) = [[EulerianNumbers(n, k) for k = 0:n] for n = 0:dim-1]
Eulerian(n) = EulerianTriangle(n + 1)[n+1]
Eulerian(n, k) = Eulerian(n)[k+1]
Eulerian(A::ℤSeq) = LinMap(Eulerian, A, length(A))
EulerianTransform(A::ℤSeq) = Eulerian.(Telescope(A))
const CacheNarayana = Dict{Tuple{Int,Int},fmpz}()
function NarayanaNumbers(n::Int, k::Int)
haskey(CacheNarayana, (n, k)) && return CacheNarayana[(n, k)]
CacheNarayana[(n, k)] = if (k == n)
ZZ(1)
elseif k > n || k <= 0
ZZ(0)
else
div(
Binomial(ZZ(n), n - k) * Binomial(ZZ(n - 1), n - k),
ZZ(n - k + 1),
)
end
end
NarayanaTriangle(dim) = [[NarayanaNumbers(n, k) for k = 0:n] for n = 0:dim]
Narayana(n) = NarayanaTriangle(n + 1)[n+1]
Narayana(n, k) = Narayana(n)[k+1]
Narayana(A::ℤSeq) = LinMap(Narayana, A, length(A))
NarayanaTransform(A::ℤSeq) = Narayana.(Telescope(A))
const CacheLaguerre = Dict{Int, ℤSeq}(0 => [ZZ(1)])
function Laguerre(n::Int)
haskey(CacheLaguerre, n) && return CacheLaguerre[n]
prevrow = Laguerre(n-1)
row = ℤSeq(n+1)
row[n+1] = ℤ(1)
for k ∈ 1:n
row[k] = ( get(prevrow, k-1, 0)
+ get(prevrow, k,   0)*(2*k-1)
+ get(prevrow, k+1, 0)*k^2
)
end
CacheLaguerre[n] = row
end
Laguerre(n::Int, k::Int) = Laguerre(n)[k+1]
Laguerre(A::ℤSeq) = LinMap(Laguerre, A, length(A))
function LaguerreTriangle(size::Int)
length(CacheLaguerre) < size && Laguerre(size)
[CacheLaguerre[n] for n in 0:size-1]
end
LaguerreTransform(A::ℤSeq) = Laguerre.(Telescope(A))
function transforms(trans)
len = 18
println()
println(trans)
println()
Unos = [ZZ(1) for n = 0:len]
print("UNOS ")
Println(Unos)
trans(Unos) |> Println
println()
AltUnos = [(-1)^n * ZZ(1) for n = 0:len]
println("ALTS ")
Println(AltUnos)
trans(AltUnos) |> Println
println()
Squares = [ZZ(n^2) for n = 0:len]
println("SQUARES ")
Println(Squares)
trans(Squares) |> Println
println()
Nat = [ZZ(n) for n = 0:len]
println("N0TS ")
Println(Nat)
trans(Nat) |> Println
println()
Nut = [ZZ(n) for n = 1:len]
println("NATS ")
Println(Nut)
trans(Nut) |> Println
end
# *** TrianglesPlot.jl ****************
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
P = plot!(xlims=(-2.0,1.0), ylims=(-5.0, 5.0))
display(P)
end
# *** TrianglesTraitCard.jl ****************
function TraitCard(T::ℚTri, name)
println("WRONG TYPE! Will not process!")
println(name)
println()
end
function TraitCard(T::ℤTri, trans::Function, name, N)
println("\n=================")
println(name)
println()
len = max(N, min(N-1, length(T)))
S=Flat(T);      print("Triangle:  "); S[1:len] |> Println
S=sum(T);       print("Sum:       "); S[1:len] |> Println
S=EvenSum(T);   print("EvenSum:   "); S[1:len] |> Println
S=OddSum(T);    print("OddSum:    "); S[1:len] |> Println
S=AltSum(T);    print("AltSum:    "); S[1:len] |> Println
S=DiagSum(T);   print("DiagSum:   "); S[1:len] |> Println
S=Central(T);   print("Central:   "); S[1:min(len,length(S))] |> Println
S=LeftSide(T);  print("LeftSide:  "); S[1:len] |> Println
S=RightSide(T); print("RightSide: "); S[1:len] |> Println
P = Polynomial(T)
S=PosHalf(P);  print("PosHalf:   "); S[1:len] |> Println
S=NegHalf(P);  print("NegHalf:   "); S[1:len] |> Println
S=trans([ZZ(n) for n = 0:32]); print("N0TS:      "); S[1:len] |> Println
S=trans([ZZ(n) for n = 1:32]); print("NATS:      "); S[1:len] |> Println
println()
end
function AssociatedTriangles(T::ℤTri,N)
len = max(N, min(N-1, length(T)))
println("\nTriangle:\n")
for row in T[1:len] Println(row) end
println()
S=Flat(T); print("Flat triangle:  "); S[1:len] |> Println
println("\nInverse triangle:\n")
S = InverseTriangle(T)
if S != []
for row in S[1:len] Println(row) end
println()
S = Flat(S); print("Inverse:  "); S[1:len] |> Println
end
println("\nDiagonal triangle:\n")
S = DiagonalTriangle(T)
Println.(S[1:len])
println()
S = Flat(S); print("Diagonal:  "); S[1:len] |> Println
println("\nPolynomial values, array:\n")
Println.(PolyArray(T))
println("\nPolynomial values, triangle:\n")
S = PolyTriangle(T)
Println.(S[1:len])
println()
S = Flat(S); print("PolyVal:  "); S[1:len] |> Println
println()
end
function TraitCard(
triangle::Function,
transform::Function,
dim = 8
)
T = triangle(dim)
TraitCard(T, transform, "$triangle ", dim)
AssociatedTriangles(T, dim)
end
# *** TrianglesUtils.jl ****************
function print_without_type(io, v::AbstractVector)
print(io, "[")
for (i, el) ∈ enumerate(v)
i > 1 && print(io, ", ")
print(io, el)
end
println(io, "]")
end
"""

Print the array ``A`` in the format ``n ↦ A[n]`` for n in the given range.
$(SIGNATURES)
"""
function MappedShow(A::Array, R::AbstractRange, offset = 0)
for k ∈ R
if isassigned(A, k)
println(k + offset, " ↦ ", A[k])
else
println(k + offset, " ↦ ", "undef")
end
end
end
"""

Print an integer triangle without typeinfo.
$(SIGNATURES)
"""
function Show(T::ℤTri, format="std")
if format == "std"  # default
for t in T
print_without_type(IOContext(stdout), t)
end
elseif format == "nest"
T |> println
elseif format == "Flat"
for n in T, k in n
print(k, ", ")
end
elseif format == "map"
offset = -1 # Julia is unfortunately 1-based.
for n in T
MappedShow(n, 1:length(n), offset)
offset += length(n)
end
elseif format == "info"
S = [k for row in T for k in row]
print("[",  SimilarSeq(S), "] ")
for t in T[1:4], k in t
print(k, ", ")
end
println("... ")
end
end
end
