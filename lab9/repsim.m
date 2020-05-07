function area=repsim(f,a,b,n)
  h=(b-a)/n; 
  x=a+h:h:b-h;
  x_mid=a+h/2:h:b-h/2;
  area=h/6*(f(a)+2*sum(f(x))+4*sum(f(x_mid))+f(b));
endfunction
