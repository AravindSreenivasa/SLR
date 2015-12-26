%sample
I=imread('data\l.jpg');
imgs=im2bw(I,graythresh(I));
img=imgs(1:240,1:120);
img1=outline(img);
imtool(img1);

[r l]=find(img1);



