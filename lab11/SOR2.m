function [x_new,iter]= SOR2(A,b,omega,error)
    n = length(b);
 	x_old = zeros(n,1);
     M = 1/omega*diag(diag(A)) + tril(A,-1);
     N = M-A;
     T = M\N;
     c = M\b;
     x_new = c+T*x_old;
     iter = 1;
  
    while norm(x_new-x_old,inf)*norm(T,inf)/(1-norm(T,inf))>error
        x_old = x_new;
        x_new = c+T*x_old;
        iter = iter+1;
 	end
  
  
end