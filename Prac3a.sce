im2=imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
im1=imread("C:\CompSci\Sem 5\DIP\Programs\wallp2.jpg");
[n, m] = size(im2)
im1 = imresize(im1, [n, m]);
imnew=imadd(im1,im2);
subplot(2,2,1);
imshow(imnew);
title("imadd");

imnew1=imsubtract(im1,im2);
subplot(2,2,2);
imshow(imnew1);
title("imsubtract");

