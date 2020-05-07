function table = div_dif_double ( nodes, values, der_values )
% 	 nodes:  x1, ...., xn
% 	 values: f ( x1 ), f ( x2 ), ..., f( xn )
% 	 der_values: f' ( x1 ), f' ( x2 ), ..., f'( xn )
% 	 table: divided differences
    n = 2*length(nodes); table = NaN(n);
	double_nodes = repelem(nodes, 2); % z urile
	table(:,1) = repelem(values,2)';
	table(1:2:end-1,2) = der_values'; % luam pozitiile impare
	table(2:2:end-2,2) = diff(values)'./ diff ( nodes )' ;
	for j=3:n
		for i=1:n-j+1
            table(i,j) = (table(i+1,j-1)-table(i,j-1)) /...
			 (double_nodes(i+j-1)-double_nodes(i));
        end
    end
end