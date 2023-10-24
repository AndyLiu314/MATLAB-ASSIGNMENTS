% Computing Assignment #2
% Author: Andy Liu
% ID: 301472847

EN1 = GERandom( 5, 500 ); 
EN2 = GERandom( 10, 500 ); 
EN3 = GERandom( 100, 500 ); 
EN4 = GERandom( 250, 500 ); 
EN5 = GERandom( 500, 500 ); 
EN6 = GERandom( 1000, 500 ); 
EN7 = GERandom( 2000, 500 ); 
EN8 = GERandom( 2500, 500 ); 
EN9 = GERandom( 3000, 500 ); 

EN = [EN1 EN2 EN3 EN4 EN5 EN6 EN7 EN8 EN9];
N = [5 10 100 250 500 1000 2000 2500 3000];
p = polyfit(log10(N), log10(EN), 1); 
predicted_log_EN = polyval(p, log10(N));

loglog(N, EN, 'o', 'MarkerFaceColor', 'black', 'MarkerEdgeColor', 'black', 'DisplayName', 'Mean Error');
title('Mean error EN in gaussian elimination');
hold on;
loglog(N, 10.^predicted_log_EN, 'r-', 'DisplayName', 'Linear Fit');
xlabel('N');
ylabel('EN');
legend('show');