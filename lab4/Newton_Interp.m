function Lx=Newton_Interp(nodes,values,x)
    % x is the point where we compute L
    % L is the Lagrange polynomial
    Lx = x;
    table = div_dif(nodes,values);
    for i=1:length(x)
        prods = [1 cumprod(x(i)-nodes(1:end-1))];
        Lx(i) = table(1,:)*transpose(prods);
    end
end