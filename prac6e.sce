im=imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
im3=im(240:500,1:200, : );

x=size(im3);
M=x(1);
N=x(2);
zoomed=zeros(M*2,N,3,'uint8');
v=0;
for i=1:M
    for j=1:N
        zoomed(i+v,j,:)=im3(i,j,:)
        zoomed(i+v+1,j,:)=im3(i,j,:)
    end
    v=v+1
end
subplot(1,2,1);
title("Original Image");
imshow(im3);
subplot(1,2,2);
title("Zoomed Image");
imshow(zoomed);

//figure();
//im4=im2(100,257,80,240);
//zoom_rect(x,(im4));
