im1 = imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
im2 = imread("C:\CompSci\Sem 5\DIP\Programs\wallp2.jpg");

resImg = bitand(im1, im2);
figure;
subplot(1, 3, 1);
imshow(im1);
title("Image 1");
subplot(1, 3, 2);
imshow(im2);
title("Image 2");
subplot(1, 3, 3);
imshow(resImg);
title("Resultant Image");
