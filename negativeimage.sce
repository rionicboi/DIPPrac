im=imread("drape.jpg");
gim=rgb2gray(im)
ngim(:,:)=255-gim(:,:)
subplot(2,1,1)
imshow(gim)
subplot(2,1,2)
imshow(ngim)
