im1=imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
x=size(im1);
M=x(1);
N=x(2);
meanr_image=0;
meanb_image=0;
meang_image=0;
for i=1:M
    for j=1:N
        meanr_image= meanr_image+ double(im1(i,j,1)); 
        meang_image = meang_image + double(im1(i,j,2));
        meanb_image= meanb_image + double(im1(i,j,3));      
    end
end
disp("RED MEAN IS-:",double(meanr_image)/(M*N));
disp("GREEN MEAN IS-:",double(meang_image)/(M*N));
disp("BLUE MEAN IS-:",double(meanb_image)/(M*N));
