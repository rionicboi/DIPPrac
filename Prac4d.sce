im1 = imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");

figure;
subplot(1, 2, 1);
imshow(im1);
title("Original Image");

subplot(1, 2, 2);
im2 = 255 - im1;
imshow(im2);
title("Negative Image");
