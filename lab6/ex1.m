nodes = [0 pi/2 pi 3*pi/2 2*pi];
f=@(x) sin(x);
fplot(f,[-1,1],'LineWidth',3);

values=f(nodes);

clf; hold on; grid on;

fplot(f,[0 2*pi]);
plot([pi/4],[f(pi/4)],'ok')

spline_gr = spline(nodes,values);

t = linspace(0,2*pi);
plot(t,ppval(spline_gr,t), 'r')


% plot(nodes, values, 'ok', 'MarkerSize', 12, 'MarkerFaceColor','r');


