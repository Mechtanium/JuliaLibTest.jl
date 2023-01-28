using JuliaLibTest
using Test

@testset "JuliaLibTest.jl" begin
    @test sayhi("John") == "Dear John, I'm Julia and I'd like to say hi!"
end
