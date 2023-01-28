using JuliaLibTest
using Documenter

DocMeta.setdocmeta!(JuliaLibTest, :DocTestSetup, :(using JuliaLibTest); recursive=true)

makedocs(;
    modules=[JuliaLibTest],
    authors="Enosolease Ame M.",
    repo="https://github.com/Mechtanium/JuliaLibTest.jl/blob/{commit}{path}#{line}",
    sitename="JuliaLibTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Mechtanium.github.io/JuliaLibTest.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Mechtanium/JuliaLibTest.jl",
    devbranch="master",
)
