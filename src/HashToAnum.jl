# This file is part of IntegerTriangles.
# Copyright Peter Luschny. License is MIT.

(@__DIR__) ∉ LOAD_PATH && push!(LOAD_PATH, (@__DIR__))

module HashToAnum
export DBASE

backupDBASE = Dict{String, Vector{String}}(
"705572b13958d3e"  => ["A271703", "Luschny", "2016"],
"8b18a76884deadde" => ["A088312", "Jovovic", "2003"],
"e9a7b35e5729b47f" => ["A088313", "Jovovic", "2003"],
"cbabb881a23dfbf6" => ["A293116", "Manyama", "2017"],
"c68085b3e9c35895" => ["A001053", "Sloane",  "1973"],
"8e0d393bb518a20a" => ["missing", "missing", "missing"],
"506594ba3a5d40c8" => ["A187535", "Munarini", "2011"],
"29db0a9130076dcd" => ["A000007", "Sloane",  "1994"],
"a38a0a11852bd787" => ["A000012", "Sloane",  "1994"]
)

DBASE = Dict{String, Vector{String}}(
"705572b13958d3e"  => ["A271703", "Luschny", "2016", "-"],
"8b18a76884deadde" => ["A088312", "Jovovic", "2003", "-"],
"e9a7b35e5729b47f" => ["A088313", "Jovovic", "2003", "-"],
"cbabb881a23dfbf6" => ["A293116", "Manyama", "2017", "-"],
"c68085b3e9c35895" => ["A001053", "Sloane",  "1973", "-"],
"8e0d393bb518a20a" => ["missing", "missing", "missing", "-"],
"506594ba3a5d40c8" => ["A187535", "Munarini", "2011", "-"],
"29db0a9130076dcd" => ["A000007", "Sloane",  "1994", "-"],
"a38a0a11852bd787" => ["A000012", "Sloane",  "1994", "-"],
)

end # module
