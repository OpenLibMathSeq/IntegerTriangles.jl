# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

# Version of: UTC 2021-04-13 21:46:43
# f9386b22-9c90-11eb-3594-139739581203

# Do not edit this file, it is generated from the modules and will be overwritten!
# Edit the modules in the src directory and build this file with BuildTriangles.jl!

__precompile__()
module IntegerTriangles
using Nemo, 
    HTTP, 
    DocStringExtensions, 
    OrderedCollections,
    PrettyTables
export 
AbstractSequence,
AbstractTriangle,
AltSum,
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
DelehamΔ,
DiagSum,
DiagonalTriangle,
EgfExpansionCoeff,
EgfExpansionPoly,
EulerianTransform,
EulerianTriangle,
Evaluate,
EvenSum,
Explore,
ExtCatalanTriangle,
FibonacciTransform,
FibonacciTriangle,
Flat,
GetSeqnum,
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
PolyVal2,
PolyVal3,
PolyValue,
Polynomial,
PolynomialFunction,
PosHalf,
Print,
Println,
QInt,
QPolyRing,
QPolySeq,
QSeq,
QTri,
RecTriangle,
ReversedPolynomial,
RightSide,
RiordanSquare,
SchroederBigTransform,
SchroederBigTriangle,
SchröderBTriangle,
SchröderLTriangle,
SeqToString,
Show,
StirlingCycleTransform,
StirlingCycleTriangle,
StirlingSetTransform,
StirlingSetTriangle,
Sum,
Telescope,
TraitCard,
Trans,
TransAlts,
TransNat0,
TransNat1,
TransSqrs,
TransUnos,
ZInt,
ZPolyRing,
ZPolySeq,
ZSeq,
ZTri,
oeis_search,
profilepath,
search_failed,
ℚInt,
ℚPolyRing,
ℚPolySeq,
ℚSeq,
ℚTri,
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
# *** TrianglesBase.jl ****************
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
const ℤPoly = Nemo.fmpz_poly # (alias for Nemo.fmpz_poly)
const ℚPoly = Nemo.fmpq_poly # (alias for Nemo.fmpq_poly)
const ℤPolySeq = Seq{ℤPoly} # (alias for Array{fmpz_poly, 1})
const ℚPolySeq = Seq{ℚPoly} # (alias for Array{fmpq_poly, 1})
const ℤPolyTri = Seq{ℤPolySeq} # (alias for Array{Array{fmpz_poly, 1}, 1})
const ℚPolyTri = Seq{ℚPolySeq} # (alias for Array{Array{fmpq_poly, 1}, 1})
ZPolyRing(x) = PolynomialRing(ZZ, x)
QPolyRing(x) = PolynomialRing(QQ, x)
Base.sum(T::ℤTri) = [sum(row) for row ∈ T]
Base.sum(T::ℚTri) = [sum(row) for row ∈ T]
const WARNING_ON_NOTINVERTIBLE = false
function DiagonalTriangle(T::ℤTri)
dim = length(T)
U = ZTri(dim)
for n = 1:dim
R = ZSeq(div(n + 1, 2))
for k = 0:div(n - 1, 2)
R[k + 1] = T[n - k][k + 1]
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
R, x = ZPolyRing("x")
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
Evaluate(p::ℤPoly, x) = subst(p, x)
Evaluate(p::ℚPoly, x) = subst(p, x)
Evaluate(P::ℤPolySeq, x) = Evaluate.(P, x)
Evaluate(P::ℚPolySeq, x) = Evaluate.(P, x)
function Transpose!(T::ℤTri)
for n in 1:length(T), k in 1:n
@inbounds T[n][k], T[k][n] = T[k][n], T[n][k]
end
T
end
PosHalf(p) = numerator(2^degree(p) * Evaluate(p, QQ(1, 2)))
NegHalf(p) = numerator((-2)^degree(p) * Evaluate(p, QQ(-1, 2)))
PosHalf(T::ℤTri) = PosHalf.(Polynomial(T))
NegHalf(T::ℤTri) = NegHalf.(Polynomial(T))
PosHalf(P::ℤPolySeq) = PosHalf.(P)
NegHalf(P::ℤPolySeq) = NegHalf.(P)
LinMap(F::Function, V::ℤSeq, n) = sum(F(n - 1)[k] * V[k] for k = 1:n)
LinMap(F::Function, V::ℤSeq) = LinMap(F, V, length(V))
LinMap(M::ℤTri, V::ℤSeq, n) = sum(M[n][k] * V[k] for k = 1:n)
LinMap(M::ℤTri, V::ℤSeq) = (n -> LinMap(M, V, n)).(1:length(V))
Trans(M::ℤTri, V::ℤSeq) = (n -> LinMap(M, V, n)).(1:min(length(M), length(V)))
TransUnos(T) = Trans(T, [ZZ(1) for n = 0:length(T)]) 
TransAlts(T) = Trans(T, [(-1)^n * ZZ(1) for n = 0:length(T)])
TransSqrs(T) = Trans(T, [ZZ(n^2) for n = 0:length(T)])
TransNat0(T) = Trans(T, [ZZ(n) for n = 0:length(T)])
TransNat1(T) = Trans(T, [ZZ(n) for n = 1:length(T)])
Telescope(A::ℤSeq) = (A[1:k] for k = 1:size(A, 1))
Telescope(len::Int, f::Function) = Telescope([ZZ(f(k)) for k = 0:len - 1])
"""
Return the number of permutations of n letters, ``n! = ∏(1, n)``,
the factorial of ``n``. (Nota: The notation is a shortcut. The use of '!' breaks
Julia naming conventions, therefore use it only internally.)
$(SIGNATURES)
"""
F!(n) = Nemo.factorial(ZZ(n))
Binomial(n, k) = Nemo.binomial(ZZ(n), ZZ(k))
Binomial(n) = [Binomial(n, k) for k = 0:n]
Binomial(A::ℤSeq) = LinMap(Binomial, A)
BinomialTriangle(dim) = [Binomial(n) for n = 0:dim - 1]
BinomialTransform(A::ℤSeq) = Binomial.(Telescope(A))
Laplace(s, k) = factorial(k) * coeff(s, k)
function EgfExpansion(prec, gf::Function, coeff=true)
R, x = QPolyRing("x")
S, t = PowerSeriesRing(R, prec + 1, "t")
ser = gf(x, t)
P = Laplace.(ser, 0:prec - 1)
coeff ? Coefficients.(P) : P
end
EgfExpansionCoeff(prec, gf::Function) = EgfExpansion(prec, gf, true)
EgfExpansionPoly(prec, gf::Function) = EgfExpansion(prec, gf, false)
function OrthoPoly(dim::Int, s::Function, t::Function)
T = ZTri(dim, reg=true) # regular triangle
for n ∈ 1:dim T[n][n] = 1 end
for n ∈ 2:dim
u(k) = k == 0 || k == n ? 0 : T[n - 1][k]
for k ∈ 1:n - 1
T[n][k] = (u(k - 1) + s(k - 1) * u(k) + t(k) * u(k + 1))
end
end
T
end
function DelehamΔ(dim::Int, s::Function, t::Function)
T = ZTri(dim)
R, x = ZPolyRing("x")
A = [R(s(k) + x * t(k)) for k ∈ 0:dim - 2]
C = [R(1) for i ∈ 0:dim]
C[1] = R(0)
m = 1
for k ∈ 0:dim - 1
for j ∈ k + 1:-1:2
C[j] = C[j - 1] + C[j + 1] * A[j - 1]
end
T[m] = [coeff(C[2], j) for j ∈ 0:k]
m += 1
end
T
end
function RiordanSquare(dim::Int, s::Function)
T = ZTri(dim, reg=true)
for n ∈ 0:dim - 1
T[n + 1][1] = s(n)
end
for k ∈ 1:dim - 1, m ∈ k:dim - 1
T[m + 1][k + 1] = sum(T[j][k] * T[m - j + 2][1] for j ∈ k:m)
end
T
end
function ExpRiordanSquare(dim::Int, s::Function)
R = RiordanSquare(dim, s)
u = ZZ(1)
for k ∈ 1:dim - 1
u *= k
for m ∈ 1:k
j = (m == 1 ? u : div(j, m - 1))
R[k + 1][m] *= j
end
end
R
end
function check(invM, dim)
for n = 1:dim
for k = 1:n
if denominator(invM[n, k]) != 1
return false
end
end
end
return true
end
function InverseTriangle(T)
dim = length(T)
M = zeros(QQ, dim, dim)
for n in 1:dim, k in 1:n
M[n, k] = QQ(T[n][k])
end
S = MatrixSpace(QQ, dim, dim)
invM = try
inv(S(M))
catch e
if isa(e, Exception)
if WARNING_ON_NOTINVERTIBLE
@warn("\n\n Not invertible!\n\n")
end    
return []
end
end
if check(invM, dim) != true
if WARNING_ON_NOTINVERTIBLE
@warn("\n\n Inverse not in MatrixSpace(ZZ)!\n\n")
end
return []
end
return [[numerator(invM[n, k]) for k = 1:n] for n = 1:dim]
end
function Flat(T::ℤTri)
Empty(s) = isempty(s) ? [ZZ(0)] : s
[z for t ∈ T for z ∈ Empty(t)]
end
function Println(io, v::AbstractVector, newline=true)
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
Print(io, str::String) = print(io, str)
Print(T::ℤTri) = Println.(IOContext(stdout), T, false)
Print(T::ℤSeq) = Println(IOContext(stdout), T, false)
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
A::ℤSeq 
gen::Function  # generating function
function RecTriangle(dim::Int, gen::Function)
dim <= 0 && throw(ArgumentError("dim has to be a positive integer."))
new(
dim,
fill(ZZ(0), dim),
(n::Int, k::Int, f::Function) -> gen(n, k, f)::fmpz,
)
end
end
function Base.iterate(T::RecTriangle)
top = T.gen(0, 0, () -> undef)
T.A[1] = ZZ(top)
([top], 1)
end
"""
Return the next row of the triangle.
$(SIGNATURES)
"""
function Base.iterate(T::RecTriangle, n)
@inline prevrow(A, n) = (k) -> (k < 0 || k > n) ? ZZ(0) : A[k + 1]
n == T.dim && return nothing
F(n, k) = T.gen(n, k, prevrow(T.A, n))
row = [F(n, k) for k ∈ 0:n]
for k ∈ 1:n + 1
T.A[k] = row[k]
end
(row, n + 1)
end
Base.length(R::RecTriangle) = R.dim
Base.eltype(R::RecTriangle) = fmpz
function PolyArray(T::ℤTri)
P = Polynomial(T)
dim = length(T)
U = ZTri(dim)
for n = 1:dim
p = P[n]
eva = [Evaluate(p, k) for k in 0:dim - 1]
U[n] = numerator.(eva)
end
U
end
function PolyTriangle(T::ℤTri)
A = PolyArray(T)
U = ZTri(length(T))
for n = 1:length(T)
U[n] = [A[n - k][k + 1] for k = 0:n - 1]
end
U
end
function PolyValue(T::ℤTri, k::Int)
P = PolyArray(T)
[P[n][k + 1] for n = 1:length(P)]
end
PolyVal2(T::ℤTri) = PolyValue(T, 2)
PolyVal3(T::ℤTri) = PolyValue(T, 3)
# *** TrianglesExamples.jl ****************
function PrimeDivisors(n)
n < 2 && return ZInt[]
sort!([p for (p, e) ∈ factor(ZZ(n))])
end
const CacheLah = Dict{Int,Array{fmpz,1}}([0 => [ZZ(1)]])
function LahNumbers(n::Int64)
haskey(CacheLah, n) && return CacheLah[n]
prevrow = LahNumbers(n - 1)
row = ZSeq(n + 1)
row[1] = 0
row[n + 1] = 1
for k = 2:n
row[k] = prevrow[k - 1] + prevrow[k] * (n + k - 2)
end
CacheLah[n] = row
end
LahNumbers(n, k) = LahNumbers(n + 1)[k + 1]
function LahTriangle(size)
length(CacheLah) < size && LahNumbers(size)
[CacheLah[n] for n = 0:size - 1]
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
T = ZTri(dim)
for n = 1:dim
T[n][n] = 1
end
for n = 2:dim
u(k) = k == 0 || k == n ? 0 : T[n - 1][k]
for k = 1:n - 1
T[n][k] = u(k - 1) + u(k) + u(k + 1)
end
end
T
end
MotzkinTriangle(dim) = OrthoPoly(dim, n -> 1, n -> 1)
Motzkin(n) = MotzkinTriangle(n + 1)[n + 1] # TODO!!
Motzkin(n, k) = Motzkin(n)[k + 1]
Motzkin(A::ℤSeq) = LinMap(Motzkin, A, length(A))
MotzkinTransform(A::ℤSeq) = Motzkin.(Telescope(A))
CatalanTriangle(dim) = OrthoPoly(dim, n -> 0, n -> 1)
Catalan(n) = CatalanTriangle(n + 1)[n + 1] # TODO!!
Catalan(n::Int, k::Int) = Catalan(n)[k + 1]
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
ExtCatalanTriangle(dim) = [[CatalanBallot(n, k) for k = 0:n] for n = 0:dim - 1]
bs(n) = iszero(n) ? 0 : isodd(n) ? 2 : 1
SchröderBTriangle(dim) = DelehamΔ(dim, bs, n -> 0^n)
ls(n) = isodd(n) ? 2 : 1
SchröderLTriangle(dim) = DelehamΔ(dim, ls, n -> 0^n)
"""
Recurrence for A132393, StirlingCycle numbers.
$(SIGNATURES)
"""
function R132393(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
(n - 1) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A048993, StirlingSet numbers.
$(SIGNATURES)
"""
function R048993(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
k * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A271703, Lah numbers.
$(SIGNATURES)
"""
function R271703(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
(k - 1 + n) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A094587, (Rising factorials).
$(SIGNATURES)
"""
function R094587(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
(n - k) * prevrow(k) + prevrow(k - 1)
end
"""
Recurrence for A008279. Number of permutations of n things k at a time.
(Falling factorials)
$(SIGNATURES)
"""
function R008279(n::Int, k::Int, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
prevrow(k) + k * prevrow(k - 1)
end
"""
Iterates over the first n rows of `A132393`.
Triangle of unsigned Stirling numbers of the first kind.
$(SIGNATURES)
"""
I132393(n) = RecTriangle(n, R132393)
T132393(dim) = ZTri(I132393(dim))
StirlingCycleTriangle(dim) = T132393(dim)
StirlingCycle(n) = StirlingCycleTriangle(n + 1)[n + 1]
StirlingCycle(n, k) = StirlingCycle(n)[k + 1]
StirlingCycle(A::ℤSeq) = LinMap(StirlingCycle, A, length(A))
StirlingCycleTransform(A::ℤSeq) = StirlingCycle.(Telescope(A))
"""
Iterates over the first n rows of `A048993`.
Triangle of Stirling numbers of 2nd kind.
$(SIGNATURES)
"""
I048993(n) = RecTriangle(n, R048993)
T048993(dim) = ZTri(I048993(dim))
StirlingSetTriangle(dim) = T048993(dim)
StirlingSet(n) = StirlingSetTriangle(n + 1)[n + 1]
StirlingSet(n, k) = StirlingSet(n)[k + 1]
StirlingSet(A::ℤSeq) = LinMap(StirlingSet, A, length(A))
StirlingSetTransform(A::ℤSeq) = StirlingSet.(Telescope(A))
"""
Iterates over the first n rows of `A094587`.
$(SIGNATURES)
"""
I094587(n) = RecTriangle(n, R094587)
T094587(dim) = ZTri(I094587(dim))
"""
Iterates over the first n rows of `A008279`.
$(SIGNATURES)
"""
I008279(n) = RecTriangle(n, R008279)
T008279(dim) = ZTri(I008279(dim))
function R225478(n, k, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
4 * prevrow(k - 1) + (4 * n - 1) * prevrow(k)
end
I225478(dim) = RecTriangle(dim, R225478)
T225478(dim) = ZTri(I225478(dim))
function R007318(n, k, prevrow::Function)
(k == 0 && n == 0) && return ZZ(1)
prevrow(k - 1) + prevrow(k)
end
I007318(dim) = RecTriangle(dim, R007318)
PascalTriangle(dim) = ZTri(I007318(dim))
function SchroederBig(n, k)
div(
(k + 1) * sum(Binomial(n + 1, k + j + 1) *
Binomial(n + j, j) for j = 0:(n - k)),
n + 1,
)
end
function SchroederBigTriangle(dim)
[[SchroederBig(n, k) for k = 0:n] for n = 0:dim - 1]
end
SchroederBig(n) = SchroederBigTriangle(n + 1)[n + 1]
SchroederBig(A::ℤSeq) = LinMap(SchroederBig, A, length(A))
SchroederBigTransform(A::ℤSeq) = SchroederBig.(Telescope(A))
FJ(n, k) = n <= 2 ? 1 : FJ(n - 1, k) + k * FJ(n - 2, k)
JacobsthalTriangle(dim) = RiordanSquare(dim, n -> FJ(n, 2))
Jacobsthal(n) = JacobsthalTriangle(n + 1)[n + 1]
Jacobsthal(n, k) = Jacobsthal(n)[k + 1]
Jacobsthal(A::ℤSeq) = LinMap(Jacobsthal, A, length(A))
JacobsthalTransform(A::ℤSeq) = Jacobsthal.(Telescope(A))
FibonacciTriangle(dim) = RiordanSquare(dim, n -> FJ(n, 1))
Fibonacci(n) = FibonacciTriangle(n + 1)[n + 1]
Fibonacci(n, k) = Fibonacci(n)[k + 1]
Fibonacci(A::ℤSeq) = LinMap(Fibonacci, A, length(A))
FibonacciTransform(A::ℤSeq) = Fibonacci.(Telescope(A))
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
EulerianTriangle(dim) = [[EulerianNumbers(n, k) for k = 0:n] for n = 0:dim - 1]
Eulerian(n) = EulerianTriangle(n + 1)[n + 1]
Eulerian(n, k) = Eulerian(n)[k + 1]
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
Narayana(n) = NarayanaTriangle(n + 1)[n + 1]
Narayana(n, k) = Narayana(n)[k + 1]
Narayana(A::ℤSeq) = LinMap(Narayana, A, length(A))
NarayanaTransform(A::ℤSeq) = Narayana.(Telescope(A))
const CacheLaguerre = Dict{Int,ℤSeq}(0 => [ZZ(1)])
function Laguerre(n::Int)
haskey(CacheLaguerre, n) && return CacheLaguerre[n]
prevrow = Laguerre(n - 1)
row = ZSeq(n + 1)
row[n + 1] = ZZ(1)
for k ∈ 1:n
row[k] = ( get(prevrow, k - 1, 0)
+ get(prevrow, k,   0) * (2 * k - 1)
+ get(prevrow, k + 1, 0) * k^2
)
end
CacheLaguerre[n] = row
end
Laguerre(n::Int, k::Int) = Laguerre(n)[k + 1]
Laguerre(A::ℤSeq) = LinMap(Laguerre, A, length(A))
function LaguerreTriangle(size::Int)
length(CacheLaguerre) < size && Laguerre(size)
[CacheLaguerre[n] for n in 0:size - 1]
end
LaguerreTransform(A::ℤSeq) = Laguerre.(Telescope(A))
function transforms(trans)
len = 18
println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
println(trans)
println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
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
println("SQRS ")
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
# *** TrianglesExplorer.jl ****************
const WARNING_ON_NOTFOUND = false
const Kind = ["Std", "Rev", "Inv", "RevInv", "InvRev"]
const Triangles = LittleDict{String, Function}(
"Binomial"      => BinomialTriangle, 
"Catalan"       => CatalanTriangle, 
"Eulerian"      => EulerianTriangle, 
"Fibonacci"     => FibonacciTriangle, 
"Laguerre"      => LaguerreTriangle, 
"Lah"           => LahTriangle, 
"Motzkin"       => MotzkinTriangle, 
"Narayana"      => NarayanaTriangle, 
"SchroederB"    => SchröderBTriangle, 
"SchroederL"    => SchröderLTriangle,
"StirlingCycle" => StirlingCycleTriangle, 
"StirlingSet"   => StirlingSetTriangle, 
"PermCoeffs"    => T008279 
)
const Traits = LittleDict{String, Function}(
"Triangle"   => Flat, 
"Sum"        => sum, 
"EvenSum"    => EvenSum, 
"OddSum"     => OddSum, 
"AltSum"     => AltSum,
"DiagSum"    => DiagSum, 
"Middle"     => Middle, 
"Central"    => Central, 
"LeftSide"   => LeftSide, 
"RightSide"  => RightSide, 
"PosHalf"    => PosHalf, 
"NegHalf"    => NegHalf, 
"PolyVal2"   => PolyVal2,
"PolyVal3"   => PolyVal3,
"TransUnos"  => TransUnos,
"TransAlts"  => TransAlts,
"TransSqrs"  => TransSqrs,
"TransNat0"  => TransNat0,
"TransNat1"  => TransNat1
)
function Show(io, name, kind, trait, seq, savetofile=false)
anum = GetSeqnum(seq, WARNING_ON_NOTFOUND)
if savetofile
print(".")
print(io, anum, " ", name, " ", kind, " ", trait, " ")
Println(io, seq[1:min(8, end)])
else
print(anum, " ", name, " ", kind, " ", trait, " ")
Println(seq[1:min(8, end)])
end
end
function TriangleVariant(Tri, dim, kind="Std") 
if ! (kind in Kind)
@warn("No valid kind!")
return []
end
M = Tri(dim)
kind == "Std" && return M
kind == "Rev" && return reverse.(M) 
kind == "InvRev" && (M = reverse.(M))
invM = InverseTriangle(M)
(kind == "Inv" || kind == "InvRev" 
|| invM == []) && return invM
return reverse.(invM) 
end
function Explore(triangle, kind, trait, dim)
T = TriangleVariant(Triangles[triangle], dim, kind) 
seq = Traits[trait](T)
Show(stdout, triangle, kind, trait, seq)
end
const LEN = 32
function Explore(triangle, kind, trait)
dim = 32
T = TriangleVariant(Triangles[triangle], dim, kind) 
seq = Traits[trait](T)
anum = GetSeqnum(seq)
anum === nothing && (anum = "nothing")
seqstr = string(seq[1:min(8, end)])[max(0,11):max(0,end-1)]
String[anum, triangle, kind, trait, seqstr]
end
function Explore(trait, dim)
for (name, triangle) in Triangles
for kind in Kind
T = TriangleVariant(triangle, dim, kind)
if T != [] 
seq = Traits[trait](T)
Show(stdout, name, kind, trait, seq)
end    
end
end
end
function Explore(savetofile=false)
@warn "This will take several minutes and produce the file 'profile.txt' in the data directory."
open(profilepath(), "a") do io
for (name, triangle) in Triangles
for kind in Kind
T = TriangleVariant(triangle, LEN, kind) 
if T != []
for (trait, f) in Traits
Show(io, name, kind, trait, f(T), savetofile) 
end
end
end
end
end
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
P = plot!(xlims=(-2.0, 1.0), ylims=(-5.0, 5.0))
display(P)
end
# *** TrianglesTables.jl ****************
# *** TrianglesTraitCard.jl ****************
function TraitCard(T::ℚTri, name)
println("WRONG TYPE! Will not process!")
println(name)
println()
end
function TraitCard(T::ℤTri, name, N)
println("\n=================")
println(name)
println()
P = Polynomial(T)
PA = PolyArray(T)
len = max(N, min(N - 1, length(T)))
S = Flat(T);      print("Triangle:  "); S[1:len] |> Println
S = sum(T);       print("Sum:       "); S[1:len] |> Println
S = EvenSum(T);   print("EvenSum:   "); S[1:len] |> Println
S = OddSum(T);    print("OddSum:    "); S[1:len] |> Println
S = AltSum(T);    print("AltSum:    "); S[1:len] |> Println
S = DiagSum(T);   print("DiagSum:   "); S[1:len] |> Println
S = Central(T);   print("Central:   "); S[1:min(len, length(S))] |> Println
S = LeftSide(T);  print("LeftSide:  "); S[1:len] |> Println
S = RightSide(T); print("RightSide: "); S[1:len] |> Println
S = PosHalf(P);  print("PosHalf:   "); S[1:len] |> Println
S = NegHalf(P);  print("NegHalf:   "); S[1:len] |> Println
S = PolyValue(PA, 2); print("PolyVal2:  "); S[1:len] |> Println
S = PolyValue(PA, 3); print("PolyVal3:  "); S[1:len] |> Println
S = Trans(T, [ZZ(n) for n = 0:32]); print("N0TS:      "); S[1:len] |> Println
S = Trans(T, [ZZ(n) for n = 1:32]); print("NATS:      "); S[1:len] |> Println
println()
end
function AssociatedTriangles(T::ℤTri, N)
len = max(N, min(N - 1, length(T)))
println("\nTriangle:\n")
for row in T[1:len] Println(row) end
println()
S = Flat(T); print("Flat triangle:  "); S[1:len] |> Println
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
function TraitCard(triangle::Function, dim=8)
T = triangle(dim)
TraitCard(T, "$triangle ", dim)
AssociatedTriangles(T, dim)
end
# *** TrianglesUtils.jl ****************
const srcdir = realpath(joinpath(dirname(@__FILE__)))
const ROOTDIR = dirname(srcdir)
const datadir = joinpath(ROOTDIR, "data")
oeis_file() = joinpath(datadir, "stripped")
is_oeis_installed() = isfile(oeis_file())
function profilepath()
srcdir = realpath(joinpath(dirname(@__FILE__)))
ROOTDIR = dirname(srcdir)
datadir = joinpath(ROOTDIR, "data")
profilepath = joinpath(datadir, "profile.txt")
end
function oeis_notinstalled()
if !is_oeis_installed()
@warn("OEIS data not installed! Download stripped.gz from oeis.org,")
@warn("expand it and put it in the directory ../data.")
return true
end
return false
end
function search_failed(name)
for ln ∈ eachline(name)
occursin("greeting", ln) && continue
occursin("{", ln) && continue
occursin("start", ln) && continue
if occursin("\"results\": null", ln)
return true
end 
end 
false
end            
"""
Search the OEIS for a sequence. The file is saved in the 'data' directory in json format.
$(SIGNATURES)
"""
function oeis_search(seq)
seqstr = SeqToString(seq[1:min(end,12)])
filename = joinpath(datadir, seqstr[1:min(end,12)] * ".json")
uristr = "https://oeis.org/search?q=" * seqstr * "&go=Search&fmt=json"
url = HTTP.URI(uristr)
tries = 3
r = nothing
for i = 1:tries
try
r = HTTP.get(url; readtimeout = 2)
getfield(r, :status) == 200 && break
getfield(r, :status) == 302 && break
catch e
@warn(e)
end
sleep(2)
end
if !(r === nothing) && getfield(r, :status) == 200
open(filename, "w") do f
write(f, getfield(r, :body))
end
@info("Dowloaded " * basename(filename) * " to " * datadir)
else
if r === nothing
@warn("Search did not succeed, connection timed out.\n")
else
@warn("Search did not succeed, $url\nStatus: $(getfield(r, :status))")
end
end
filename
end
function SeqToString(seq::ℤSeq)
separator = ","
str = ""
for term in seq
str *= string(abs(term)) * separator
end
str
end
const minlen = 30  # fragil! 
function GetSeqnum(seq::ℤSeq)
str = SeqToString(seq)
soff = 1; loff = 10 
println(seq)
println(str)
for ln ∈ eachline(oeis_file())
ln[1] == '#' && continue
l = replace(ln, "-" => "")
m = min(length(str), length(l)) 
len = min(length(str), length(l)-loff) - 1
len < minlen && continue
cmp(str[soff:soff+len], l[loff:loff+len]) == 0 && return ln[1:7]
end
toff = findfirst(",", str)[1] + 1
for ln ∈ eachline(oeis_file())
ln[1] == '#' && continue
l = replace(ln, "-" => "")
len = min(length(str)-toff, length(l)-loff) - 1
len < minlen && continue
cmp(str[toff:toff+len], l[loff:loff+len]) == 0 && return "B" * ln[2:7]
end
for ln ∈ eachline(oeis_file())
ln[1] == '#' && continue
l = replace(ln, "-" => "")
ff = findnext(",", l, 10)
ff === nothing && continue
loff = ff[1] + 1; soff = 1
len = min(length(str)-soff, length(l)-loff) - 1
len < minlen && continue
cmp(str[soff:soff+len], l[loff:loff+len]) == 0 && return "C" * ln[2:7]
len = min(length(str)-toff, length(l)-loff) - 1
len < minlen && continue
cmp(str[toff:toff+len], l[loff:loff+len]) == 0 && return "D" * ln[2:7]
end
nothing
end
GetSeqnum(seq::ℤTri) = GetSeqnum(Flat(seq))
function GetSeqnum(seq, search=false)
anum = GetSeqnum(seq)
if search
if anum === nothing
filename = oeis_search(seq)
if ! search_failed(filename)
println()
Println(seq[1:min(18, end)])
@warn "Not found in the local base but possibly in the OEIS!"
println()
end
end
end
anum 
end
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
function MappedShow(A::Array, R::AbstractRange, offset=0)
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
for t in T[1:min(10, end)]
print_without_type(IOContext(stdout), t)
end
elseif format == "nest"
T |> println
elseif format == "flat"
for n in Flat(T)
print(n, ", ")
end
elseif format == "map"
offset = -1 # Julia is unfortunately 1-based.
for n in T
MappedShow(n, 1:length(n), offset)
offset += length(n)
end
elseif format == "info"
S = Flat(T)
print("[", GetSeqnum(S), "] ")
for t in T[1:min(5, end)], k in t
print(k, ", ")
end
println("... ")
end
end
end
