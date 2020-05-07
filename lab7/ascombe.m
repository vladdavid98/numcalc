close all;
  
nodes=[10.00 8.00 13.00 9.00 11.00 14.00 6.00 4.00 12.00 7.00 5.00];
values=[8.04 6.59 7.58 8.81 9.33 9.96 7.24 4.26 10.64 4.82 5.68];
subplot(2,2,1); hold on; grid on; xlim([4, 20]);ylim([4 14]);
plot(nodes, values, 'ob', 'MarkerFaceColor','y','MarkerSize',10);
coefs_lsq=polyfit(nodes, values, 1);
poly_lsq=@(x) polyval(coefs_lsq,x);
fplot(poly_lsq, [4,20], 'LineWidth', 3);
legend('off');
error1=norm(values-poly_lsq(nodes));
set(gca, 'fontsize', 15); legend('off');



nodes=[10.00 8.00 13.00 9.00 11.00 14.00 6.00 4.00 12.00 7.00 5.00];
values=[9.14 8.14 8.74 9.77 9.26 8.10 6.13 3.10 9.13 7.26 4.74];
subplot(2,2,2); hold on; grid on; xlim([4, 20]);ylim([4 14]);
plot(nodes, values, 'ob', 'MarkerFaceColor','y','MarkerSize',10);
coefs_lsq=polyfit(nodes, values, 1); % daca aici era 2 trecea prin toate punctele
poly_lsq=@(x) polyval(coefs_lsq,x);
fplot(poly_lsq, [4,20], 'LineWidth', 3);
legend('off');
error2=norm(values-poly_lsq(nodes));
set(gca, 'fontsize', 15); legend('off');



nodes=[10.00 8.00 13.00 9.00 11.00 14.00 6.00 4.00 12.00 7.00 5.00];
values=[7.46 6.77 12.74 7.11 7.81 8.84 6.08 5.39 8.15 6.42 5.73];
subplot(2,2,3); hold on; grid on; xlim([4, 20]);ylim([4 14]);
plot(nodes, values, 'ob', 'MarkerFaceColor','y','MarkerSize',10);
coefs_lsq=polyfit(nodes, values, 1);
poly_lsq=@(x) polyval(coefs_lsq,x);
fplot(poly_lsq, [4,20], 'LineWidth', 3);
legend('off');
error3=norm(values-poly_lsq(nodes));
set(gca, 'fontsize', 15); legend('off');



nodes=[8.00 8.00 8.00 8.00 8.00 8.00 8.00 8.00 8.00 8.00 19.00];
values=[4.12 6.59 2.01 1.90 2.33 9.94 3.24 4.66 13.64 14.82 5.67];
subplot(2,2,4); hold on; grid on; xlim([4, 20]);ylim([4 14]);
plot(nodes, values, 'ob', 'MarkerFaceColor','y','MarkerSize',10);
coefs_lsq=polyfit(nodes, values, 1);
poly_lsq=@(x) polyval(coefs_lsq,x);
fplot(poly_lsq, [4,20], 'LineWidth', 3);
legend('off');
error4=norm(values-poly_lsq(nodes));
set(gca, 'fontsize', 15); legend('off');