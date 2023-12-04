im=imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");

//translation
mat=[1 0 0;...
    0 1 0;...
    70 70 1];
t= imtransform(im,mat,'affine');
subplot(2,2,1);
imshow(t);
title("TRANSLATION");

//scaling
mat=[2 0 0;...
    0 2 0;...
    0 0 1];
s= imtransform(im,mat,'affine');
subplot(2,2,2);
imshow(s);
title("SCALING");

//rotation
mat=[cosd(30) sind(30) 0;...
    -sind(30) cosd(30) 0;...
    0 0 1];
r= imtransform(im,mat,'affine');
subplot(2,2,3);
imshow(r);
title("ROTATION");

//
