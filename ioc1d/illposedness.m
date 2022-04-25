clear all;
close all;
clc;


npts = 100;
tlow = -1;
thigh = 1;

t = linspace(tlow, thigh, npts);

f1 = t.^2;
f2 = 1/2 * t.^2;
f3 = 2 * t .^2;
f4 = 0.33*ones(size(t));
f5 = t.^4;

fig = figure;
fig.Position(1:2) = [100 100];
fig.Position(3:4) = [780 650];

hold all;

plot(t, f1, 'DisplayName', sprintf('$f_1(x) = x^2$'));
plot(t, f2, 'DisplayName', sprintf('$f_2(x) = \\frac{1}{2} x^2$'));
plot(t, f3, 'DisplayName', sprintf('$f_3(x) = 2 x^2$'));
plot(t, f4, 'DisplayName', sprintf('$f_4(x) = 0.33$'));
plot(t, f5, 'DisplayName', sprintf('$f_5(x) = x^4$'));
plot(0, 0, 'k*', 'LineWidth', 2, 'MarkerSize', 12, 'DisplayName', '$x^*$');
grid;

xlabel(sprintf('$x$'), 'interpreter', 'latex', 'FontSize', 15);
ylabel(sprintf('$f(x)$'), 'interpreter', 'latex', 'FontSize', 15);
leg = legend('location', 'southoutside', 'orientation', 'horizontal', 'interpreter', 'latex', 'FontSize', 15, 'numcolumns', 3);

exportgraphics(fig, '../graphs/ioc1d/illposedness.png', 'ContentType', 'Image', 'Resolution', 400);