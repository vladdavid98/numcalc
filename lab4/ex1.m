function ex1()
    nodes = [1 1.5 2 3 4];
    values = [0 0.17609 0.30103 0.47712 0.60206];
    
    lg2_5 = Newton_Interp(nodes, values, 2.5);
    lg3_25 = Newton_Interp(nodes, values, 3.25);
    
    Lx = @(x) Newton_Interp(nodes, values, x);
    
    clf;
    fplot(Lx,[1,4],'r')
    
    hold on;
    plot(2.5,lg2_5,'ok','MarkerFaceColor','g'); hold on;
    plot(3.25,lg3_25,'ok','MarkerFaceColor','b');
    
    Yi = 1:0.1:3.5
    max(abs(Lx(Yi)-log10(Yi)))
end