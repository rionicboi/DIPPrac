im= imread("C:\CompSci\Sem 5\DIP\Programs\huhcat.jpg");
subplot(1,2,1);
imshow(im);
size(im);
y=flipdim(im,2);
subplot(1,2,2);
imshow(y);
