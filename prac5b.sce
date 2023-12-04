im=imread("colours.jpg");
im=rgb2gray(im);
im=imresize(im,[100,100]);
im=uint16(im);
[r,c]=size(im);
freqn= zeros(1,256);
for i=1:r
    for j=1:c
        freqn(im(i,j)+1)=freqn(im(i,j)+1)+1;
    end
end
figure;
bar(0:255,freqn,"black")
