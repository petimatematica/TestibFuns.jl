module TestibFuns

using LinearAlgebra

# Write your package code here...
struct st_funlib
    obj  :: Function
    grad :: Function
    hess :: Function 
end


############ FUNCTION LIBRARY ###############################


function f1(x)
    return dot(x)
end

function g1(x)
    return 2x
end

function h1(x)
    n = size(x,1)
    h = zeros(n,n)
    for i in 1:n
        h[i,i] = 2
    end
end


function f2(x)
    return 3*dot(x)
end

function g2(x)
    return 5x
end

function h1(x)
    n = size(x,1)
    h = zeros(n,n)
    for i in 1:n
        h[i,i] = 2*x[i]
    end
end

# Function 

quad1 = st_funlib(f1,g1,h1)
quad2 = st_funlib(f2,g2,h2)

end
