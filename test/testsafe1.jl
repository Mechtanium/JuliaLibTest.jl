using JuliaLibTest
using Test

@testset "Trial test 1" begin
    @test sayhi("John") == "Dear John, I'm Julia and I'd like to say hi!"
    @test sayhi("John") == "Dear John, I'm Julia and I'd like to say hi!"
end

@testset "Trial test 2" begin
    @test greetme("John") == "Hello John, nice to meet you. I'm Julia"
    @test greetmeinspanish("John") == "Hola senor John. Como estas. Me llamo Julia y tengo una hermana, se llama Julietta"
end
