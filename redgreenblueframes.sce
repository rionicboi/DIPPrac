im=imread("untitled.jpg");
[r,c]=size(im);
rim=zeros(r,c,3,'uint8');
bim=zeros(r,c,3,'uint8');
gim=zeros(r,c,3,'uint8');
rim(:,:,1)=im(:,:,1);
gim(:,:,2)=im(:,:,2);
bim(:,:,3)=im(:,:,3);
figure;
subplot(2,2,1)
imshow(im)
subplot(2,2,2)
imshow(uint8(rim))
subplot(2,2,3)
imshow(uint8(gim))
subplot(2,2,4)
imshow(uint8(bim))