im2=imread("colours.jpg");
im=imread("drape.jpg");
x=size(im);
y=size(im2);
im3=imresize(im2,[360,538]);
M=x(1);
N=x(2);
newadded=zeros(M,N,3,'uint16');
for i=1:M
    for j=1:N
        for k=1:3
            newadded(i,j,k)=double(im3(i,j,k))+double(im(i,j,k));
            if(newadded(i,j,k)>255)then
               newadded(i,j,k)=255;
            end
        end    
    end
end
subplot(2,2,1)
imshow(uint8(newadded))
title("BY FUNCTION")
im4=imadd(im,im3)
subplot(2,2,2)
imshow(im4)
title("BY BUILT IN FUNCTION")
