im= imread("C:\Users\CSLab\Documents\colours.jpg");
subplot(1,2,1)
imshow(im)
size(im) 
y=flipdim(im,2,10);
subplot(1,2,2)
imshow(y)
