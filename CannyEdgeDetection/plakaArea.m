function I = plakaArea(pic) 
cannyPic = cannyEdgeDetection(pic,50,80); 
%en fazla 255 bulunan alan? bulmak 
[m n] = size(cannyPic);
maxPer = 0; 

for i = 1:m
    for j = 1:n
        for x = 0:m-1
            for y = 0:n-1
                if i-x <= 0 || j-y <= 0 
                    break
                    break
                end
                maxPic(x+1,y+1) = cannyPic(i-x,j-y); 
                [size1 size2] = size(maxPic); 
                size3 = size1*size2; 
                wdNum = whiteDot(maxPic); 
                if (wdNum / size3) > maxPer
                    maxPer = wdNum/size3;
                    I = maxPic; 
                end
            end
        end
    end
end
end

                

