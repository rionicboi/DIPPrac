co=imread("C:\CompSci\Sem 5\DIP\Programs\huhcat.jpg");
grey= rgb2gray(co);
bw=im2bw(grey,0.5);
subplot(3,1,1);
imshow(co);
subplot(3,1,2);
imshow(grey);
subplot(3,1,3);
imshow(bw);
