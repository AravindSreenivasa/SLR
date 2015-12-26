I=imread('data\n.jpg');
img = im2bw(I, graythresh(I));
im1=img(1:240,1:120);
im = fliplr(im1);
imshow(im);
fing=0;wc=0;tipx=0;tipy=0;tx=0;ty=0;
storek=0;xs=zeros;ys=zeros;
count=1;finger=0;sk=0;

[x y]=size(im);

for j=1:(y*0.2)
    fing=0;storek=0;sk=0;
    for i=1:x-1
        if(im(i,j)~=im(i+1,j))
            fing=fing+1;
            
        end
        if(im(i,j)==1)
            for k=1:x
               if(im(i+k,j)==0 || (i+k)>=240)
                   break
               end
               sk=k;
            end
            tipy=i;
            tip=j+abs(k/2);
            tipx=abs(tip);
            i=i+sk;
        end
        if(storek>sk)
            tx=tipx;
            ty=tipy;
            storek=sk;
        end
    end
    if(finger<fing)
        finger=fing;
        xs(count)=tx;
        ys(count)=ty;
        count=count+1;
    end
end
count=count-1;
display(count);
