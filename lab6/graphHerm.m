nodes = [0 3 5 8 13];
values = [0 225 383 623 993];
der_values = [75 77 80 74 72];

t = linspace(0,13,1001);

[distance,speed] = Hermite_Interp_Der_Arr(nodes,values,der_values,t);
[distance2, speed2] = PiecewiseCubicHermiteInterp(nodes,values,der_values,t);
spline_clamped = spline(nodes,[der_values(1) values der_values(end)]);
clf;

subplot(1,2,1)
hold on; axis square;
plot(t,distance, 'r')
plot(t,distance2, 'g')
plot(t,ppval(spline_clamped,t), 'b')
plot(nodes,values,'or')
grid on;

subplot(1,2,2)
hold on; axis square;
plot(t,speed,'b')
plot(t,speed2,'r')
plot(t,ppval(fnder(spline_clamped),t),'g')
plot(nodes,der_values,'or')
grid on;
