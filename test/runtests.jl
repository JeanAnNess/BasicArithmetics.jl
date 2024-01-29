using BasicArithmetics
using Test

@testset "BasicArithmetics.jl" begin
    @testset "scalars" begin
        @test additive(1, 2) == 3
        @test multiplicative(1, 2) == 2
        @test subtractive(1, 2) == -1
    end

    @testset "vectors" begin
        @test additive([1, 2], [3, 4]) == [4, 6]
        @test multiplicative([1, 2], [3, 4]') == [ 3  4; 6  8]
        @test subtractive([1, 2], [3, 4]) == [-2, -2]
    end

    @testset "matrices" begin
        A =  [  0.202933  0.258557
                0.245553  0.409472
                0.481074  0.175235 ]
        B =  [  0.695759  0.253752
                0.406012  0.923333
                0.649414  0.148309]
        C =  [  0.339689  0.018281  0.435167
                0.567377  0.327016  0.227162]
        res_additive    =   [   0.898692  0.512309
                                0.651565  1.33281
                                1.13049   0.323544]
        res_multiplicative =[  0.215633  0.0882621  0.147044
                                0.315737  0.138393   0.199873
                                0.26284   0.0660992  0.249154]
        res_subtractive = [     -0.492826   0.004805
                                -0.160459  -0.513861
                                -0.16834    0.026926]

        @test isapprox(additive(A,B),res_additive, atol=1e-4)
        @test isapprox(multiplicative(A,C),res_multiplicative, atol=1e-4)
        @test isapprox(subtractive(A,B),res_subtractive, atol=1e-4)
    end
end