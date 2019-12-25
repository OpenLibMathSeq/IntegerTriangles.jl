# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module JsonTriangles

using JSON, OrderedCollections
using IntegerTrianglesLib, HashedRelations, IntegerTrianglesExamples

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
				"auth": "Lus",
				"year": "2016"
			},
			{   "type": "evensum",
				"data": "1,0,1,0,2,1,0,6",
				"hash": "a34b3a",
				"anum": "A271703",
				"auth": "Lus",
				"year": "2016"
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
    "auth" => "Lus",
    "year" => "2016"
)
d_oddsum = LittleDict{String,String}(
    "type" => "oddsum",
    "data" => "1,0,1,0,2,1,0,6",
    "hash" => "a3cb3a",
    "anum" => "A271703",
    "auth" => "Lus",
    "year" => "2016"
)

characteristic = LittleDict{String,LittleDict}(
    "evensum" => d_evensum,
    "oddsum" => d_oddsum
)

println()
for c in characteristic println(c) end

oeis = LittleDict{String,Array{String,1}}(
    "variants" => String["A271703", "A105278", "A111596"],
    "rowrefs" => String["A000012", "A002378", "A083374", "A253285"],
    "colrefs" => String["A000007", "A000142", "A001286", "A001754", "A001755", "A001777"]
)

println()
for refs in oeis println(refs) end

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

println()
for r in rows println(r) end
println()
println()

TriangleProfile(name::String) = LittleDict{String,Any}(
    "name" => [name],
    "rows" => rows,
    "oeis" => oeis,
    "characteristic" => characteristic
)

LahTP = TriangleProfile("Lah Numbers")

for item in LahTP
    I = item[2]
    for i in I
        println(i)
    end
end

end # module
