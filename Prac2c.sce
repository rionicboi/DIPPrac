im = imread("C:\CompSci\Sem 5\DIP\Programs\huhcat.jpg");
im = rgb2gray(im);
binImg = im > 100;
subplot(1, 2, 1)
imshow(im);
title("Original Image");
subplot(1, 2, 2);
imshow(binImg);
title("Threshold Image");
