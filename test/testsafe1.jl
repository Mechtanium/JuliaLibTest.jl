using JuliaLibTest
using Test

@testset "Regression test" begin
    A = rand(50, 50)
    B = rand(50, 10)
    N = rand([0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], 50, 10)

    C = A*B

    using SparseArrays
    Ci = sparse(C)
    x = ones(10)
    b = Ci*x
    Ci += N

    @test normal_reg(Ci, b)[1] ≈ my_reg(Ci, b)[1]
end

@testset "Trial test 1" begin
    @test sayhi("John") == "Dear John, I'm Julia and I'd like to say hi!"
end

@testset "Trial test 2" begin
    @test greetme("John") == "Hello John, nice to meet you. I'm Julia"
    @test greetmeinspanish("John") == "Hola senor John. Como estas. Me llamo Julia y tengo una hermana, se llama Julietta"
end
