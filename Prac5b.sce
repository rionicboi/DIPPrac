im1 = imread("C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg");
im1 = rgb2gray(im1);
im = uint16(im1);
im = imresize(im , [100,100]);
[r,c] = size(im);
freqn = zeros(1,256);
for i = 1:r
    for j = 1:c
        freqn(im(i,j)+1) = freqn(im(i,j)+1)+1;
    end
end
bar(0:255,freqn);
