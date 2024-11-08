% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date:11/7/2024

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Pull data (skipped header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

% Calculate / display average humidity, temperature, and total precipitation.
average_temp = mean(temperature);
average_humidity = mean(humidity);
total_precip = sum(precipitation);

fprintf('Average temperature: %.2f\n', average_temp);
fprintf('Average humidity: %.2f\n', average_humidity);
fprintf('Total precipitation: %.2f\n', total_precip);

% Saves outputs to new file named 'weather_summary.txt'.
data = [average_temp average_humidity total_precip]
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, '%f %f %f\n', data');
fclose(fileID);