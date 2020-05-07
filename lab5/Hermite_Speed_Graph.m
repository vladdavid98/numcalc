nodes = [0 3 5 8 13]; %nodes,time
values = [0 225 383 623 993]; %values,distance
der_values = [75 77 80 74 72]; %der_values,speed

clf;
t = linspace(0,13,1000);
[currDistance, currSpeed] = Hermite_Interp_Der_Arr(nodes,values,der_values,t);

plot(currDistance,currSpeed);
xlabel('distance');
ylabel('speed');
set(gca,'XTick',0:100:1000)
set(gca,'YTick',40:10:120)
grid on