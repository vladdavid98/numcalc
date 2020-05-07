function x = gauss(A,b)
    n = length(b);
    A = [A b];
    
    for k=1:n-1
        [maxval, maxpos] = max(abs(A(k:n,k)));
        maxpos = maxpos+(k-1);
        if maxval==0
           disp('No unique solution'); 
        elseif maxpos ~= k
            A([k,maxpos],k:n+1) = A([maxpos,k],k:n+1);
        end
        
        for i = k+1:n
           A(i,k:end) = A(i,k:end) - (A(i,k)/A(k,k))*A(k,k:end);
        end
    end
    x = backsubs(A(:,1:end-1),A(:,n+1));
    
end


function x = gauss(A,B)
  n = length(B);
  AA=A;
  A = [A B];
  for k = 1:n
    [val, pos] = max(abs(A(k:n,k)));
    pos+=k-1;
    if val==0
      disp("no unique solution")
      return
    elseif pos!=k
      A([k,pos],k:end) = A([pos,k],k:end);
    endif
    for i=k+1:n
      A(i,k:end)=A(i,k:end)-(A(i,k)/A(k,k))*A(k,k:end);
    endfor
  endfor
  x = backsub(A(:,1:end-1),A(:,n+1));
endfunction
