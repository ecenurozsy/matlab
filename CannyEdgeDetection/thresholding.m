function I = thresholding(pic,lower,upper)
[m n] = size(pic)
p = pic; 
for i=1:m
    for j=1:n
        if p(i,j) >= upper 
            I(i,j) = p(i,j); 
        elseif p(i,j) <= lower
            I(i,j) = 0;
        end
    end
end

for i=2:m-1
    for j=2:n-1
        if p(i,j) > lower && p(i,j) < upper
            if I(i-1,j) ~= 0 || I(i,j-1) ~=0 || I(i-1,j-1) ~=0 
                I(i,j) = p(i,j);
            else
                I(i,j) = 0;
            end
        end
    end
end





