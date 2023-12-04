im=imread("C:\Users\CSLab\Documents\drape.jpg");
x=size(im);
M=y(1)
N=x(2);
flip=zeros(M,N,3,'uint8');
for i=1:M
    flip(:,i,:)= im(:,M-i+1,:)
end
imwrite(flip,"flipped.png");
be=imread("flipped.png");
subplot(2,1,1);
imshow(im);
subplot(2,1,2)
imshow(be)
