module TestibFuns

export quad1, quad2

using LinearAlgebra

# Write your package code here...
struct st_funlib
    obj  :: Function
    grad :: Function
    hess :: Function 
end


############ FUNCTION LIBRARY ###############################


function f1(x)
    return dot(x,x)
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
    return h
end


function f2(x)
    return 3*dot(x,x)
end

function g2(x)
    return 5x
end

function h2(x)
    n = size(x,1)
    h = zeros(n,n)
    for i in 1:n
        h[i,i] = 2*x[i]
    end
    return h
end

# Function 

quad1 = st_funlib(f1,g1,h1)
quad2 = st_funlib(f2,g2,h2)

end
