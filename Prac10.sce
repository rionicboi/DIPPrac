img = imread('C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg');
if size(img, 3) == 3
    img = rgb2gray(img);
end
sobelMaskX = [-1 0 1; -2 0 2; -1 0 1];
sobelMaskY = sobelMaskX';
edgesX = conv2(double(img), sobelMaskX, 'same');
edgesY = conv2(double(img), sobelMaskY, 'same');
img1 = sqrt(edgesX.^2 + edgesY.^2);

prewittMaskX = [-1 0 1; -1 0 1; -1 0 1];
prewittMaskY = prewittMaskX';
edgesX = conv2(double(img), prewittMaskX, 'same');
edgesY = conv2(double(img), prewittMaskY, 'same');
img2 = sqrt(edgesX.^2 + edgesY.^2);

robertsMaskX = [1 0;0 -1];
robertsMaskY = [0 1; -1 0];
edgesX = conv2(double(img), robertsMaskX, 'same');
edgesY = conv2(double(img), robertsMaskY, 'same');
img3 = sqrt(edgesX.^2 + edgesY.^2);

subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(uint8(img1));
title('Sobel Filter');

subplot(2, 2, 3);
imshow(uint8(img2));
title('Prewitt Filter');

subplot(2, 2, 4);
imshow(uint8(img3));
title('Roberts Filter');
