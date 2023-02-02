module JuliaLibTest

include("Utils.jl")
include("LinearIterResolver.jl")

export sayhi, greetme, greetmeinspanish, normal_reg, resolveJacobi, resolveinverse,
    resolvegausssiedel

    A = rand(50, 50)
    B = rand(50, 10)
    N = rand([0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], 50, 10)

    C = A*B

    using SparseArrays
    Ci = sparse(C)
    x = ones(10)
    b = Ci*x
    Ci += N

    println(resolveinverse(Ci, b))

end
