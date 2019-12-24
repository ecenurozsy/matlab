function bluPic = gaussianFilt(pic,sigma,kernelSize)
k = kernelSize; 
s = sigma;
[x y]= meshgrid(-k:k,-k:k);
M = size(x,1) - 1 ;
N = size(y,1) - 1 ; 
expEqu = -(x.^2 + y.^2) / ( 2*sigma*sigma) ; 
Kernel = exp(expEqu)/ ( 2*pi*sigma*sigma) ; 
newPic = double(pic) ; 
zerosPic = zeros(size(pic)); 
newPic = padarray(newPic,[k k]); 
for i=1:size(newPic,1) - M 
    for j=1: size(newPic,2) - N 
        tempPic = newPic(i:i+M,j:j+N) .* Kernel; 
        zerosPic(i,j) = sum(sum(tempPic)); 
    end
end
bluPic = uint8(zerosPic) ; 
end


% imshow(bluPic) ; 
