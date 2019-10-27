clear all;clc;
x = input('Enter a number:\n');
digits = []; 
tempx = x; % in while loop, i will lost my x, so this is to keep my x. 
while 1
   if x < 0.1
       break;
   else
      digits = [mod(x,10) digits];
      x = floor(x/10);
   end
end
if mod(tempx,sum(digits))== 0
    disp('This is a Harshad Number');
else
    disp('Sorry. Please try again.');
end

   