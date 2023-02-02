resolveinverse = (A, b) -> (transpose(A)*A)\(transpose(A)*b)

function resolveJacobi(A_matrix::AbstractMatrix, B_vector::AbstractVector)
    include("Utils.jl")

    m = size(A_matrix)
    
    return 
end

function resolvegausssiedel(A_matrix::AbstractMatrix, B_vector::AbstractVector, error_rate::Float64=0.000000001)

    x = ones(Base.Float64, m)

    err = x -> sum((B_vector - (A*x))^.2)

    while (err > error_rate)
        1
    end

end
