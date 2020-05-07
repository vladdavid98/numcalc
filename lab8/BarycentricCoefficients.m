function A = BarycentricCoefficients(nodes)
  A = nodes;
  for i = 1:length(nodes)
      A(i) = 1 / prod( nodes( i ) - nodes ( nodes ~= nodes(i))); 
  end
end
