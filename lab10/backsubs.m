function x = backsubs(A,b)
    n = length(b);
    x = length(b)
    
    for i = n:-1:1
       x(i) = (b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
    end


end