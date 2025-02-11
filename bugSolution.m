function result = myFunction(input)
  %Improved error handling
  if input < 0
    error('Error: Input must be non-negative.  Received: %d', input);
  else
    result = input * 2; 
  end
end

%Alternative solution: Return NaN for negative input
function result = myFunctionAlternative(input)
  if input < 0
    result = NaN; %or some other default value
    warning('Warning: Input is negative. Returning NaN.');
  else
    result = input * 2;
  end
end

%Example Usage
input = -5;
result = myFunction(input); %throws an error
result = myFunctionAlternative(input); %returns NaN