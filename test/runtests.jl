using KnuthMorrisPratt
using Test

@testset "KnuthMorrisPratt.jl" begin
    # function generate_KMP_table
    test_sample1 = KnuthMorrisPratt.generate_KMP_table("ABCDABD")
    test_sample2 = KnuthMorrisPratt.generate_KMP_table("AAAAAAA")
    test_sample3 = KnuthMorrisPratt.generate_KMP_table("abcabcacab")
    test_len1 = KnuthMorrisPratt.generate_KMP_table("a")
    test_len2 = KnuthMorrisPratt.generate_KMP_table("ab")
    @test test_sample1 == [0, 1, 1, 1, 1, 2, 3]
    @test test_sample2 == [0, 1, 2, 3, 4, 5, 6]
    @test test_sample3 == [0, 1, 1, 1, 2, 3, 4, 5, 1, 2]
    @test test_len1 == [0]
    @test test_len2 == [0, 1]
end
