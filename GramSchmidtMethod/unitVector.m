function y = unitV(V)
[m n] = size(V);
sum = 0;
for i=1:m
    for j=1:n
        sum = sum + power(V(i,j),2);
    end
    for j=1:n
        V(i,j) = V(i,j) / sqrt(sum);
    end
end
y = V;
end
