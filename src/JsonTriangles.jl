# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module JsonTriangles

#  UNDER CONSTRUCTION

using JSON, OrderedCollections
using IntegerTrianglesLib, HashedRelations, IntegerTrianglesExamples, HashToAnum

pro = """
{
	"triangle": {
		"name": "Lah Numbers",
		"rows": [ "1", "0, 1", "0, 2, 1", "0, 6, 6, 1", "0, 24, 36, 12, 1",
                  "0, 120, 240, 120, 20, 1", "0, 720, 1800, 1200, 300, 30, 1",
                  "0, 5040, 15120, 12600, 4200, 630, 42, 1" ],
		"oeis": {
			"variants": [ "A271703", "A105278", "A111596" ],
			"rowrefs": [ "A000012", "A002378", "A083374", "A253285" ],
			"colrefs": [ "A000007", "A000142", "A001286", "A001754", "A001755", "A001777" ]
		},
		"characteristic": [
			{   "type": "triangle",
				"data": "1,0,1,0,2,1,0,6",
				"hash": "a34b3a",
				"anum": "A271703",
				"auth": "Lustig",
				"year": "2016",
                "ident": "true"
			},
			{   "type": "evensum",
				"data": "1,9,1,0,2,1,0,6",
				"hash": "734b3a",
				"anum": "A271703",
				"auth": "Jonathan",
				"year": "2016",
                "ident": "false"
			}
		]
	}
}
""";

#jpro = JSON.parse(pro)
#jpro |> println

d_evensum = LittleDict{String,String}(
    "type" => "evensum",
    "data" => "1,0,1,0,2,1,0,6",
    "hash" => "a34b3a",
    "anum" => "A271703",
    "auth" => "Faber",
    "year" => "2016",
    "ident" => "true"
)
d_oddsum = LittleDict{String,String}(
    "type" => "oddsum",
    "data" => "1,0,1,0,2,1,0,6",
    "hash" => "a3cb3a",
    "anum" => "A271703",
    "auth" => "Lustig",
    "year" => "2016",
    "ident" => "false"
)

characteristic = LittleDict{String,LittleDict}(
    "evensum" => d_evensum,
    "oddsum" => d_oddsum
)

#println()
#for c in characteristic println(c) end

oeis = LittleDict{String,Array{String,1}}(
    "variants" => String["A271703", "A105278", "A111596"],
    "rowrefs" => String["A000012", "A002378", "A083374", "A253285"],
    "colrefs" => String["A000007", "A000142", "A001286", "A001754", "A001755", "A001777"]
)

#println()
#for refs in oeis println(refs) end

rows = String[
"1",
"0, 1",
"0, 2, 1",
"0, 6, 6, 1",
"0, 24, 36, 12, 1",
"0, 120, 240, 120, 20, 1",
"0, 720, 1800, 1200, 300, 30, 1",
"0, 5040, 15120, 12600, 4200, 630, 42, 1"
]

#println()
#for r in rows println(r) end
#println()
#println()

TriangleProfile(name::String) = LittleDict{String,Any}(
    "name" => [name],
    "rows" => rows,
    "characteristic" => characteristic
)

#LahTP = TriangleProfile("Lah Numbers")
#for item in LahTP
#    I = item[2]
#    for i in I
#        println(i)
#    end
#end

function MakeCharacter(T, fun)
    seq = fun(T)[1:15]
    h = SequenceHash(seq)

    oeis = ["", "", "", ""]
    try
        oeis = DBASE[h]
    catch y
        if isa(y, KeyError)
            oeis = ["missing", "missing", "missing", "missing"]
        end
    end

    LittleDict{String,String}(
        "type" => string(fun),
        "data" => string(seq)[10:end],
        "hash" => h,
        "anum" => oeis[1],
        "auth" => oeis[2],
        "year" => oeis[3],
        "ident" => oeis[4]
    )
end

#println(flat(T)[1:15])
#for fun in [evensum, oddsum, altsum, diagsum, middle, central,
#            leftside, rightside]

maxel(A) = maximum(A)
maxel(T::IntegerTriangle) = maxel.(T)

function AllCharacters(T)

    q = MakeCharacter(T, flat);      println(q)
    q = MakeCharacter(T, sum);       println(q)
    q = MakeCharacter(T, maxel);     println(q)
    q = MakeCharacter(T, evensum);   println(q)
    q = MakeCharacter(T, oddsum);    println(q)
    q = MakeCharacter(T, altsum);    println(q)
    q = MakeCharacter(T, diagsum);   println(q)
    q = MakeCharacter(T, middle);    println(q)
    q = MakeCharacter(T, central);   println(q)
    q = MakeCharacter(T, leftside);  println(q)
    q = MakeCharacter(T, rightside); println(q)
end

function demo()
    # !Important! Don't change dim = 31.
    dim = 31

    #T = LahTriangle(dim)
    #T = InverseTriangle(T)

    T = MotzkinTriangle(dim)
    #T = InverseTriangle(T)

    #T = CatalanTriangle(dim)
    #T = InverseTriangle(T)

    AllCharacters(T)
end

demo()

end # module
