clear all;clc;
size = input("Enter size of your symbol you want: ");
space = size;
fprintf("\n\n");
for i=1:size
    for j= space-i:-1:1
        fprintf(" ");
    end
    for j = 1:(2*i-1)
        fprintf("*");
    end
    fprintf("\n");
end

for i=size-1:-1:1
    
    for j= 1:space-i
        fprintf(" ");
    end
    for j = (2*i-1):-1:1
        fprintf("*");
    end
    fprintf("\n");
end
fprintf("\n\n");

  