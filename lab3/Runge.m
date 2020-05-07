function Runge(n)
	clf; hold on; grid on;
	f = @(x) 1./(1+25*x.^2);
	fplot(f,[-1,1]);
    
    nodes = linspace(-1,1,n);
    values = f(nodes);
    plot(nodes,values,'ok','MarkerFaceColor','r');
    
    Lx = @(x) LagrangeBary(nodes,values,x);
    fplot(Lx,[-1,1],'--r')
    
    %lab2, Chebyshev polin.
    k=0:n-1;
    nodes = cos((2*k+1)/(2*n)*pi);
    values = f(nodes);
    plot(nodes,values,'ok','MarkerFaceColor','g');
    
    Lx = @(x) LagrangeBary(nodes,values,x);
    fplot(Lx,[-1,1],'g')
end