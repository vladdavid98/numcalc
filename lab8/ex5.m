function ex5(n)
    clf; hold on; grid on;
    a = 0;
    b = pi;
    f = @(x) 1./(4+sin(20.*x));

    x = linspace(a,b,1000);
    plot(x,f(x),'b');
    fill([x b a], [f(x) 0 0],'b','FaceAlpha',0.25);
    
    aa =a ;
    bb = b;
    h = (b-a)/n;
    b = a + h;
    for k = 1:n
        %Simpson
        nodes = [a (a+b)/2 b];
        x = linspace(a,b,1000);
        L2 = BarycentricLagrange(nodes,f(nodes),x);
        plot(x,L2,'g','LineWidth', 8);
        fill([x b a], [L2 0 0],'b','FaceAlpha',0.25);
        
        a= b;
        b = b+h;
    end
    
    AreaWithSimpson = repsim(f,aa,bb,n)
    AreaWithTrapezium = reptrap(f,aa,bb,n)
    TrueQuadArea = quad(f,aa,bb)
end