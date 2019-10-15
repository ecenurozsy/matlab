function sum = projSum(numberV,U,V)
sum = 0;
for i=1:(numberV-1)
    sum = sum + (proj(V(i,:),U(numberV,:)));
end
end
