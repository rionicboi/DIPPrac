im1 = imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
im1 = rgb2gray(im1);

figure;
subplot(2, 2, 1);
imshow(im1);
title("Original Image");
[count, cells] = imhist(im1);
subplot(2, 2, 2);
plot2d3(cells, count);
title("Histogram");

im2 = imhistequal(im1)
[count, cells] = imhist(im2)
subplot(2,2,3);
imshow(im2);
title("After Histogram Equalization");

subplot(2, 2, 4);
plot2d3(count, cells);
title("Histogram");
