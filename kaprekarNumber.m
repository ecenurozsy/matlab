clear all; clc;

x = input('Your x is Kaprekar number or not?\nPlease enter your x:\n');
xTemp = x;
digit = 0;
while 1 
    if xTemp/10 <0.1
        break;
    else
        digit = digit + 1 ;
        xTemp = xTemp / 10 ; 
    end
end

xSquare=x^2 ;
xRight = mod(xSquare,10^digit);
xLeft = floor(xSquare / 10^digit);

if (xRight + xLeft) == x
    disp('well done bro');
else
    disp('try again');
end
