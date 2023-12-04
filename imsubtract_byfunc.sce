im2=imread("colours.jpg");
im=imread("drape.jpg");
y=size(im2);
im3=imresize(im2,[360,538]);
x=size(im);
M=x(1);
N=x(2);
newadded=zeros(M,N,3);
for i=1:M
    for j=1:N
        for k=1:3
            newadded(i,j,k)= double(im(i,j,k)) - double(im3(i,j,k));
            if (newadded(i,j,k)<0)then
                newadded(i,j,k)=0;
            end
        end    
    end
end
subplot(2,2,1)
imshow(uint8(newadded));
title("BY FUNCTION")
newadded1=imsubtract(im,im3);
subplot(2,2,2)
imshow(newadded1);
title("BY BUILT IN FUNCTION")
