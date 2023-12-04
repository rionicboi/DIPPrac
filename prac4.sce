im2=imread("colours.jpg");
im=imread("drape.jpg");
x=size(im);
y=size(im2);
im3=imresize(im2,[360,538]);

//AND Operation between two images
imand= bitand(im,im3);
subplot(2,2,1);
imshow(imand);
title("AND OPERATION TWO IMKAGES")

//OR Operation between two images
imor= bitor(im,im3);
subplot(2,2,2);
imshow(imor);
title("OR OPERATION TWO IMKAGES")

// intersection of two images
iminter= bitand(im,im3);
subplot(2,2,3);
imshow(iminter);
title("INTERSECTION OF TWO IMKAGES")

//NOT Operation on an image
imnot = ~im;
subplot(2,2,4);
imshow(imnot);
title("NOT Operation on an image")
