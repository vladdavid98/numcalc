function [Hx,der_Hx] = Hermite_Interp_Der_Arr(nodes,values,der_values,x)  
	 % x - point(s) where to interpolate
	% Hx is Hermite polynomial
	table = div_dif_double(nodes, values, der_values);
	coefs = table(1,:);
	double_nodes = repelem(nodes, 2); % z urile dublate
    Hx = x; der_Hx = x;
    for i=1:length(x)
        Hx(i) = coefs(1);
        P = 1;
        der_Hx(i) = 0;
        der_P = 0;
        
        for k = 2:length(coefs)
            der_P = der_P*(x(i)-double_nodes(k-1))+P;
            P=P*(x(i)-double_nodes(k-1));
            Hx(i) = Hx(i) +coefs(k)* P;
            der_Hx(i) = der_Hx(i)+coefs(k)*der_P;
        end
    end
end