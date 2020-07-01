function [c,i] = bisection(f,a,b,err)
    i = 1;
    for i = 1:100
        c = (a+b)/2;
        if abs(a-b) < err || abs(f(c)) < err
            return
        end
        
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        
    end


end