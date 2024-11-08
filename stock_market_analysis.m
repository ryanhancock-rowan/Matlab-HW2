% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date:11/7/2024

% Read data from file
data = load('stock_data.txt');

% Calculate statistics
average_price = mean(data);
highest_price = max(data);
lowest_price = min(data);
days_increase = sum(diff(data) > 0); % Count days where the price increased

% Print statistics
fprintf('Average Closing Price: %.2f\n', average_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Number of Days Price Increased: %d\n', days_increase);

% Create line plot of daily closing prices
f = figure;
f.Position = [10 10 550 600]
plot(data, '-o', 'DisplayName', 'Daily Closing Prices', 'LineWidth', 1.5);
hold on;
yline(average_price, 'r--', 'Average Price', 'DisplayName', 'Average Price');
yline(highest_price, 'g--', 'Highest Price', 'DisplayName', 'Highest Price');
yline(lowest_price, 'b--', 'Lowest Price', 'DisplayName', 'Lowest Price');
hold off;

% Add labels, title, and legend
xlabel('Days');
ylabel('Closing Price ($)');
title('Stock Price Analysis');
legend('Location', 'southoutside');
grid on;

% Save plot as an image file
saveas(gcf, 'stock_analysis.png');

% Write a summary of the analysis to a new file
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Analysis Summary:\n');
fprintf(fileID, 'Average Closing Price: %.2f\n', average_price);
fprintf(fileID, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(fileID, 'Number of Days Price Increased: %d\n', days_increase);
fclose(fileID);

% Display a message indicating completion
disp('Analysis complete and results saved.');