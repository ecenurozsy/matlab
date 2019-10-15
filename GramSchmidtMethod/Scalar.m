function y = scalar(a,b)
[m,n] = size(a);
sum = 0;
for i=1:m
    for j=1:n
    sum = sum + a(i,j)*b(i,j);
    end
end
y = sum;
end
