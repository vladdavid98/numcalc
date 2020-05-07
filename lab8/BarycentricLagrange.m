function Lx = BarycentricLagrange(nodes, values, x)
  A = BarycentricCoefficients(nodes);
  Lx = x; 
  
  for j = 1 : length(x)
    xposnode = find( nodes == x(j));
    if length(xposnode) > 0
      Lx(j) = values ( xposnode);
    else
       Lx(j) =  sum(A.*values./ ( x(j) - nodes))/...
                sum( A./( x(j) - nodes)) ;
    end
  end
end
