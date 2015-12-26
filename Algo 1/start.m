global im letter
%function letter=start(im)
%display(im);
I=imread(im);
[hgt,wid,dim]=size(I);

cform = makecform('srgb2lab');

J = applycform(I,cform);

L=graythresh(J(:,:,2));
BW1=im2bw(J(:,:,2),L);
BW1=medfilt2(BW1);

M=graythresh(J(:,:,3));
BW2=im2bw(J(:,:,3),M);
BW2=medfilt2(BW2);

O=BW1.*BW2;

se90 = strel('line', 15, 90);
se0 = strel('line', 15, 0);
O = imdilate(O, [se90 se0]);

O= imfill(O,'holes');
O = bwareaopen(O,10000);

[img1 flag] = lines(O);

%imshow(img1);
%if(flag==1)
 %   letter=conPQ(img1);
%else
    letter=tips(img1);
%end
display(letter);
%end
%clear all

%end
