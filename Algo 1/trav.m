I=imread('data\out.jpg');
img = im2bw(I, graythresh(I));
image=zeros(240,120);
for i=1:240
    for j=1:120
        if(img(i,j)==1)
        image(i,j)=1;
        end
    end
end
imshow(image);
for m=1:240
    if(image(m,1)==1)
        x=m;
        break
    end
end
    
y=1;count=1;
xs=zeros;ys=zeros;
im=zeros(240,120);
dir=7;

whitecount=nnz(image);

while(count < whitecount)
    
    
    for i=1:8
        display(dir);
        if(dir==0)
            xx=x;
            yy=y+1;
        elseif(dir==1)
            xx=x-1;
            yy=y+1;
        elseif(dir==2)
            xx=x-1;
            yy=y;
        elseif(dir==3)
            xx=x-1;
            yy=y-1;
        elseif(dir==4)
            xx=x;
            yy=y-1;
        elseif(dir==5)
            xx=x+1;
            yy=y-1;
        elseif(dir==6)
            xx=x+1;
            yy=y;
        elseif(dir==7)
            xx=x+1;
            yy=y+1;
        end
        
        if(xx < 241 && xx > 0 && yy>0 && yy<121)
            if(image(xx,yy)==1)
                x=xx;
                y=yy;
                im(x,y)=1;
                xs(count)=xx;
                ys(count)=yy;
                count=count+1;
                break;
            end
        end
        dir=dir+1;
        dir=mod(dir,8);
        %display(i);
    end
    
    if(mod(dir,2)==1)
        dir1=dir+6;
        dir=mod(dir1,8);
    elseif(mod(dir,2)==0)
        dir1=dir+7;
        dir=mod(dir1,8);
    end
end
figure,imshow(im);