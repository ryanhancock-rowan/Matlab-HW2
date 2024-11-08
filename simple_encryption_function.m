% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date:11/7/2024

function encrypted_message = simple_encryption_function(message, shift)
    % Check if shift is within valid range
    if shift < 1 || shift > 25
        error('Shift value must be between 1 and 25.');
    end

    % Convert message to ASCII 
    ascii_values = double(message);
    
    % Initialize encrypted message
    encrypted_values = zeros(size(ascii_values));
    
    % Encrypt each character
    for i = 1:length(ascii_values)
        % Shift lowercase letters only (ASCII range 97 to 122)
        if ascii_values(i) >= 97 && ascii_values(i) <= 122
            shifted_value = ascii_values(i) + shift;
            if shifted_value > 122  % Wrap around if necessary
                shifted_value = shifted_value - 26;
            end
            encrypted_values(i) = shifted_value;
        else
            % If not a lowercase letter, keep it unchanged
            encrypted_values(i) = ascii_values(i);
        end
    end

    % Convert encrypted ASCII values back to characters
    encrypted_message = char(encrypted_values);
end