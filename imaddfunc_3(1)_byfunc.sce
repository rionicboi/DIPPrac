im2=imread("colours.jpg");
im1=imread("drape.jpg");
x=size(im)
y=size(im2)


im3=imresize(im2,[360,538])
imnew=imadd(im1,im3);
subplot(2,2,1);
imshow(imnew);
title("imadd")


imnew1=imsubtract(im1,im3);
subplot(2,2,2);
imshow(imnew1);
title("imsubtract")

