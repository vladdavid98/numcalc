function x_new= SOR(A, b, nr_it, omega)
  n = length(b);
  x_old = zeros(n,1);
  x_new = x_old;
  for k = 1:nr_it
    for i = 1:n
      x_new(i) = (1/(A(i,i)))*(b(i)-A(i,1:i-1)*x_new(1:i-1)...
                  - A(i,i+1:n)*x_old(i+1:n));
    end
    x_new = (1-omega)*x_old + omega*x_new;
    x_old = x_new;
  end
end
