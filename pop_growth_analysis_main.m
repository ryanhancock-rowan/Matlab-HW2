% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date:11/7/2024

population = [5000, 5200, 5350, 5600, 5800];
% x        =  1       2     3     4     5
% f(2) - f(1)  
pop_a_h = population(2:end);
pop_a = population(1:end-1)
growth = pop_a_h - pop_a;
growth_rate = growth ./ pop_a;
pop_data = [population; [0 growth_rate]]

for i = 1:length(population)
    fprintf('*********************')
    fprintf('For the year %d \n', i)
    fprintf('Population %f \n', pop_data(1, i))
    fprintf('Growth Rate %f \n', pop_data(2, i))
end