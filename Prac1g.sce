img = imread("C:\CompSci\Sem 5\DIP\Programs\rbg.jpg");
redChannel = img(:,:,1);
greenChannel = img(:,:,2);
blueChannel = img(:,:,3);
subplot(2, 2, 1);
imshow(img);
title('Original Image');
subplot(2, 2, 2);
imshow(redChannel);
title('Red Channel');
subplot(2, 2, 3);
imshow(greenChannel);
title('Green Channel');
subplot(2, 2, 4);
imshow(blueChannel);
title('Blue Channel');