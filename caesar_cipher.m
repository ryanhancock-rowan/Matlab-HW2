% Prompt user for input
message = input('Enter a message (lowercase letters only): ', 's');
shift = input('Enter a shift value (1-25): ');

% Call the Caesar cipher function
encrypted_message = Simple_Encryption_Function(message, shift);

% Display both original and encrypted messages
fprintf('Original message: %s\n', message);
fprintf('Encrypted message: %s\n', encrypted_message);