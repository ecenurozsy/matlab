clear all;clc
 x= input('Enter a number:\n');
 sum = 0;
 i = 1;
 % the program wolud be infinitive if i dont write a boundary
 % so i choose 100 loop. 
 while i<100

     while 1
     if x < 0.1
         break;
     else
         
     digitX  = mod(x,10);
     sum = sum + digitX^2;
     x = floor(x/10);
     end
     end
     if sum == 1
         disp('WWoaaawwwww this number is really happy');
         break;
     else
         x = sum;
         sum = 0;
     end
     i = i+ 1;
 end
if i == 100
    disp('Seems unhappy :(');
end