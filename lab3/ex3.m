function ex3(nrNodes)
    clf;
    e = @(x)(1+cos(pi*x))./(1+x);
    % plot the function f
    fplot(e,[0,10],'b')
    
    %plot the lagrange polynomial
    nodes = linspace(0,10,nrNodes); % 21 equally spaced points in [0,10]
    values = @(x)(1+cos(pi*x))./(1+x);
    values = values(nodes); % values(i) is f(node(i))
    hold on;
    plot(nodes,values,'ok','MarkerFaceColor','r'); % plot the 21 equally spaced nodes
    
    Lx = @(x) LagrangeBary(nodes, values, x); % make Lagrange polin
    hold on;
    fplot(Lx,[0,10],'r')
    
    % blue is the real function f and red is the Lagrange interp.
    
    
end