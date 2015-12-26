function [imgout] = projection(img_in)

%img=imread('input2\a.jpg');
%imshow(img);
%img= im2bw(img, graythresh(img));
%[xx yy]=size(img);
%I=img(2:xx-1,2:yy-1);
%figure,imshow(I);
I=img_in;
[x1 y1]=size(I);

count=0;

w1=(nnz(I(x1-1,:)));

    for i= 2:x1-1
    wc=(nnz(I(x1-i,:)));
    if(wc>=w1)
        count=count+1;
    end
    if(wc<w1)
        %display(count);
        count=0;
    end
    if(count>=70)
        x=x1-i+70;
        break;
    end
    w1=wc;
    end
    img= I(1:x,1:y1);
%figure,imshow(img);

[f c]=find(img);
img_out=img(min(f):max(f),min(c):max(c));


    
imgout=imresize(img_out,[240 120]);
%figure,imshow(imgout);

end