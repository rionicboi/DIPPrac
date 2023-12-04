img = imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
subplot(2,2,1);
imshow(img);
title("original");
mat = [2,0 0
       0,2,0 
       0,0,1];
t = imtransform(img, mat,'affine');
subplot(2,2,2);
imshow(t);
title('Translation');
mat1 = [0.5,0 0
       0,0.5,0 
       0,0,1];
s= imtransform(img, mat1,'affine');
subplot(2,2,3);
imshow(s);
title("scaling");

mat3 = [cosd(-30),sind(-30),0
       sind(-30),cosd(-30),0 
       0,0,1];
r= imtransform(img, mat3,'affine');
subplot(2,2,4);
imshow(r);
title("Rotation");
