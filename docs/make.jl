using BasicArithmetics
using Documenter

DocMeta.setdocmeta!(BasicArithmetics, :DocTestSetup, :(using BasicArithmetics); recursive=true)

makedocs(;
    modules=[BasicArithmetics],
    authors="Janes Luc Sanne <j.sanne@tu-berlin.de> and contributors",
    sitename="BasicArithmetics.jl",
    format=Documenter.HTML(;
        canonical="https://jeananness.github.io/BasicArithmetics.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jeananness/BasicArithmetics.jl",
    devbranch="master",
)
