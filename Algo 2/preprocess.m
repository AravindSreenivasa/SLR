function img_out=preprocess(I)

%I=imread('TEST2\t3.jpg');
[hgt,wid,dim]=size(I);
cform = makecform('srgb2lab');
J = applycform(I,cform);
%K=J(:,:,2);
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
img_out=projection(O);
%figure,imshow(O);


%figure,imshow(img_out);

%f = getframe(gca);
%BWsdil = frame2im(f);
%imwrite(BWsdil, 'data\bb.jpg');

end