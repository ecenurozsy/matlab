function I = cannyEdgeDetection(pic,tLow,tHigh) 
I = thresholding(nonMaxSup(gaussianFilt(grayScalePic(pic),1.4,7)),tLow,tHigh);
end
