module PrintTrees

using AbstractTrees, InteractiveUtils

export print_tree

# DataType
function AbstractTrees.children(t::DataType)
    t === Function ? Vector{Type}() : filter!(x -> x !== Any,subtypes(t))
end
AbstractTrees.printnode(io::IO,t::DataType) = print(io,t)
# Base.show(io::IO,t::DataType) = print_tree(io,t)

# Dict
AbstractTrees.children(d::Dict) = [p for p in d]
AbstractTrees.children(p::Pair) = AbstractTrees.children(p[2])
function AbstractTrees.printnode(io::IO,p::Pair)
    isempty(AbstractTrees.children(p[2])) ? print(io,"$(p[1]): $(p[2])") : print(io,"$(p[1]):")
end
# Base.show(io::IO,d::Dict) = print_tree(io,d)

end # module
