function ex3(nrNodes)
    clf;
    func = @(x)(exp(1)).^(sin(x));
    
    % plot the function f
    fplot(func,[0,6],'b')
    
    
    
    
    %plot the lagrange polynomial
    nodes = linspace(0,6,nrNodes); % 13 equally spaced points in [0,6]
    values = @(x)(exp(1)).^(sin(x));
    values = values(nodes); % values(i) is f(node(i))
    hold on;
    plot(nodes,values,'ok','MarkerFaceColor','r'); % plot the equally spaced nodes
    
    Lx = @(x) Newton_Interp(nodes, values, x);
    hold on;
    fplot(Lx,[0,6],'r')
end