clear all; clc;
number = input('Enter a number:');
nDigits = [];
digit = 0; 
num = number;
while 1
    if num / 10 < 0.1
        break;
    else
        nDigits = [mod(num,10) nDigits];
        digit = digit + 1;
        num = floor(num/10);
    end
end

nDigits = nDigits.^(digit); 

if number == sum(nDigits)
    disp('Yeah, this is an ARMSTRONG NUMBER!!!!!');
else
    disp('Sorry. This is not an armstrong number. Try again.');
end

