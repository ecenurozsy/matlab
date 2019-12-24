clear all;clc; 
%step_by_step Canny Edge Detection
%1- Input image
%2- convert image to gray scale
%3- convert image to blurring
%4- find the image gradient and theta
%5- by gradient, Non Max Sup(edge thinning)
%6- thresholding

pic = imread('ev.jpg');
grayPic = grayScalePic(pic); 
bluPic = gaussianFilt(grayPic,1,3); 
[dx dy gradientPic theta] = imageGrad(bluPic); 
nonMax = nonMaxSup(bluPic); 
thresPic = thresholding(nonMax,100,150) ; 

subplot(2,3,1),imshow(pic);
title('Original Image');
subplot(2,3,2),imshow(grayPic); 
title('Gray Scale Image');
subplot(2,3,3),imshow(bluPic);
title('Blurring Image');
subplot(2,3,4),imshow(gradientPic);
title('Gradient Image');
subplot(2,3,5),imshow(nonMax);
title('Non Max Sup Image');
subplot(2,3,6),imshow(thresPic); 
title('Thresholding Image'); 








