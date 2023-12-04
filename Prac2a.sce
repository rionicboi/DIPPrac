im=imread("C:\CompSci\Sem 5\DIP\Programs\huhcat.jpg");
gim=rgb2gray(im);
ngim(:,:)=255-gim(:,:);
subplot(2,1,1)
imshow(gim);
subplot(2,1,2);
imshow(ngim)
