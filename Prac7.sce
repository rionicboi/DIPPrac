im = imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
img1 = imnoise(im, 'salt & pepper');
subplot(2,2,1);
imshow(img1);
title("SALT & PEPPER NOISE");

img2 = imnoise(im ,'gaussian');
subplot(2,2,2);
imshow(img2);
title("GAUSSIAN NOISE");

 
filter = fspecial('gaussian'); 
img3 = imfilter(img2, filter);
subplot(2,2,3);
imshow(img3);
title(" GAUSSIAN NOISE REMOVED");
img4 = immedian(img1 , 3);
subplot(2,2,4);
imshow(img4);
title("SALT & PEPPER NOISE REMOVED");
