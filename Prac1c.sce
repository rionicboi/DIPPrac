co=imread("C:\CompSci\Sem 5\DIP\Programs\huhcat.jpg");
co1=imresize(co,1.5);
co2=imresize(co,1.5,"bilinear");
co3=imresize(co,[100,200],'bicubic');
subplot(2,2,1);
imshow(co);
subplot(2,2,2);
imshow(co1);
subplot(2,2,3);
imshow(co2);
subplot(2,2,4);
imshow(co3);
