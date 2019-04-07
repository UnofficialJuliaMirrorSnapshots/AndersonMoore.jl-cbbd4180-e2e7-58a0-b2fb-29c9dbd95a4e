push!(LOAD_PATH,"../src/")
using Documenter, AndersonMoore
 
makedocs(modules=[AndersonMoore],
        doctest=true)
 
deploydocs(deps   = Deps.pip("mkdocs", "python-markdown-math"),
    repo = "github.com/es335mathwiz/AndersonMoore.jl.git",
    julia  = "0.6.0",

    osname = "linux")

