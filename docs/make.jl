using TestibFuns
using Documenter

DocMeta.setdocmeta!(TestibFuns, :DocTestSetup, :(using TestibFuns); recursive=true)

makedocs(;
    modules=[TestibFuns],
    authors="Marcio Antônio de Andrade Bortoloti <mbortoloti@uesb.edu.br> and contributors",
    sitename="TestibFuns.jl",
    format=Documenter.HTML(;
        canonical="https://petimatematica.github.io/TestibFuns.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/petimatematica/TestibFuns.jl",
    devbranch="master",
)
