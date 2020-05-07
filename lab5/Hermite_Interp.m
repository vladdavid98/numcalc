function Hx = Hermite_Interp(nodes,values,der_values,x)  
	 % x - point(s) where to interpolate
	% Hx is Hermite polynomial
	table = div_dif_double(nodes, values, der_values);
	coefs = table(1,:);
	double_nodes = repelem(nodes, 2); % z urile dublate
	Hx = coefs(1);
	P = 1;
	for k = 2:length(coefs)
        P=P*(x-double_nodes(k-1));
        Hx = Hx +coefs(k)* P;
    end
end