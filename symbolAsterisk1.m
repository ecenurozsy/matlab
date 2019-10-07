clear all;
clc;

maxAst = input("Enter the max asterisk: ");

for i=1:maxAst
    for j=1:i
        fprintf("*");
    end
    fprintf("\n");
end


for i = maxAst-1:-1:1
    for j = i:-1:1
        fprintf("*");
    end
    fprintf("\n");
end

