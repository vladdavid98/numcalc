function quadrature()
    clf; hold on; grid on;
    a = 0;
    b = 10;
    f = @(x) sin(2*x) + sin(x) + 2;
    n = 20;
 
    x = linspace(a,b,1000);
    plot(x,f(x),'b','LineWidth',8);
    ylim([0,4]);
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
    end
  
    text(0,-0.3,['quad(f)=' num2str(quad(f,aa,bb),'%.5f') '; '...
                'reptrap(f)=' num2str(reptrap(f,aa,bb,n),'%.5f') '; '...
                'repsim(f)=' num2str(repsim(f,aa,bb,n),'%.5f') '; '], 'FontSize', 20);
end
