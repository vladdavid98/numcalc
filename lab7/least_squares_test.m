function error = least_squares_test(k)
    clf;axis equal;axis([0 2 0 1]);
% 	xticks(0:0.1:2); yticks(0:0.1:1);
	grid on; hold on;
	[x,y]=ginput(1);
	nodes=x;
	values=y; % values=f(nodes)
	i=1;
%     X = x;
%     Y = y;
	while ~isempty([x,y])
		plot(x,y,'*k', 'MarkerSize', 10);
		[x,y]=ginput(1);
		i=i+1;
		nodes=[nodes,x];values=[values,y];
    end

	% dreapta cea mai apropiata de puncte
	coefs_lsq=polyfit(nodes, values, k);
	poly_lsq=@(x) polyval(coefs_lsq,x);
	fplot(poly_lsq, [0,2], 'LineWidth', 3);
	error=norm(values-poly_lsq(nodes));
end