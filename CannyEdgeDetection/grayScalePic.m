function grayImage = grayScalePic(image)
        i = image;
        [a b c] = size(i);
        
        R = i(:, :, 1);
        G = i(:, :, 2);
        B = i(:, :, 3);
        
        for x=1:a
           for y=1:b
               grayImage(x,y) = (R(x,y)*0.3)+(G(x,y)*0.6)+(B(x,y)*0.1);
           end
        end             
end 





