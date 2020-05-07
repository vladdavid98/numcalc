function ex1()
    clf; hold on; grid on;
    a = 0;
    b = 1;
    f = @(x) 2./(1+x.^2);
    n = 4;
    
    nodesTra = [0 0 1 1];
    valuesTra = [0 f(0) f(1) 0];
    
    x = linspace(a,b,1000);
    plot(x,f(x),'b');
    fill([x b a], [f(x) 0 0],'b','FaceAlpha',0.25);
    
    aa =a ;
    bb = b;
    h = (b-a)/n;
    b = a + h;
    for k = 1:n
        %trapezium
        plot([a, b], [f(a) f(b)], 'r', 'LineWidth',8);
        fill([a b b a], [f([a b]) 0 0],'r','FaceAlpha',0.25);
        %Simpson
        nodes = [a (a+b)/2 b];
        x = linspace(a,b,1000);
        L2 = BarycentricLagrange(nodes,f(nodes),x);
        plot(x,L2,'g','LineWidth', 8);
        fill([x b a], [L2 0 0],'b','FaceAlpha',0.25);
        
        a= b;
        b = b+h;
        
        %graph of the trapezium with vertices
        plot(nodesTra, valuesTra, '--y');
        
    end
    
    AreaWithSimpson = repsim(f,aa,bb,n)
    AreaWithTrapezium = reptrap(f,aa,bb,n)
    TrueQuadArea = quad(f,aa,bb)
end