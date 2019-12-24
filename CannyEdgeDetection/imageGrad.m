function [dx dy magnitude theta] = imageGrad(pic) 
[m n] = size(pic); 
I = double(pic);
gx = [-1 0 1;-2 0 2;-1 0 1];
gy = [1 2 1; 0 0 0;-1 -2 -1]; 
for i=2:m-1
    for j=2:n-1
        dx(i,j) = sum(sum(I(i-1:i+1,j-1:j+1).*gx));
        dy(i,j) = sum(sum(I(i-1:i+1,j-1:j+1).*gy));
    end
end
ddx = double(dx);
ddy = double(dy);

magnitude = uint8(sqrt(ddx.^2 + ddy.^2)); 
theta =(atan(dy./dx)*180/pi); 








