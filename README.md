# PrintTrees.jl

Use [AbstracTrees.jl](https://github.com/Keno/AbstractTrees.jl) to print various standard Julia types.

Currently just supports `DataType` and `Dict`:

```julia
julia> using PringTrees
julia> print_tree(Real)
Real
├─ AbstractFloat
│  ├─ BigFloat
│  ├─ Float16
│  ├─ Float32
│  └─ Float64
├─ AbstractIrrational
│  └─ Irrational
├─ Integer
│  ├─ Bool
│  ├─ Signed
│  │  ├─ BigInt
│  │  ├─ Int128
│  │  ├─ Int16
│  │  ├─ Int32
│  │  ├─ Int64
│  │  └─ Int8
│  └─ Unsigned
│     ├─ UInt128
│     ├─ UInt16
│     ├─ UInt32
│     ├─ UInt64
│     └─ UInt8
└─ Rational

julia> d = Dict(:a => 2,:d => Dict(:b => 4,:c => "Hello"),:e => 5.0)
Dict{Symbol,Any} with 3 entries:
  :a => 2
  :d => Dict{Symbol,Any}(:b=>4,:c=>"Hello")
  :e => 5.0

julia> print_tree(d)
Dict{Symbol,Any}
├─ a: 2
├─ d:
│  ├─ b: 4
│  └─ c: Hello
└─ e: 5.0
```

