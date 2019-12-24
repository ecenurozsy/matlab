function nonMax = nonMaxSup(pic)

[dx dy gradient theta] = imageGrad(pic);
theta = mod(theta,180);
tPart = theta;
[m n] = size(theta); 
nonMax = gradient;
for i=1:m
    for j=1:n
        if theta(i,j) <= 22.5 || theta(i,j) > 157.5 
            tPart(i,j) = 0; %0 degree
        elseif theta(i,j) <= 67.5
            tPart(i,j) = 1; %45 degree
        elseif theta(i,j) <=112.5
            tPart(i,j) = 2; %90 degree
        elseif theta(i,j) <= 157.5 
            tPart(i,j) = 3; %135 degree
        end
    end
end

for i=2:m-1
    for j=2:n-1
        if tPart(i,j) == 0
            if gradient(i,j) >= gradient(i,j-1) && gradient(i,j) >= gradient(i,j+1)
                nonMax(i,j) = gradient(i,j);
            else
                nonMax(i,j) = 0;
            end
        elseif tPart(i,j) == 1
            if gradient(i,j) >= gradient(i-1,j+1) && gradient(i,j) >= gradient(i+1,j-1)
                nonMax(i,j) = gradient(i,j);
            else
                nonMax(i,j) = 0;
            end
        elseif tPart(i,j) == 2
            if gradient(i,j) >= gradient(i-1,j) && gradient(i,j) >= gradient(i+1,j)
                nonMax(i,j) = gradient(i,j);
            else
                nonMax(i,j) = 0;
            end
        elseif tPart(i,j) == 3
            if gradient(i,j) >= gradient(i-1,j-1) && gradient(i,j) >= gradient(i+1,j+1)
                nonMax(i,j) = gradient(i,j);
            else 
                nonMax(i,j) = 0;
            end
        end
    end
end




        

                