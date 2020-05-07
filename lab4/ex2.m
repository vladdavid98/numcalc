clf;
nodes = [ 1 2 3 4 5 ];
values = [ 22 23 25 30 28];



Lx = @(x) Newton_Interp(nodes, values, x);
fplot(Lx,[1,5],'b')
hold on;
plot(nodes,values,'ok','MarkerFaceColor','r');
