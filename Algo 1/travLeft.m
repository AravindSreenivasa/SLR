I=imread('data\k.jpg');
im = im2bw(I, graythresh(I));
img=outline(im);
image=zeros(240,120);
for i=1:240
    for j=1:120
        if(img(i,j)==1)
        image(i,j)=1;
        end
    end
end
imshow(image);
for m=1:120
    if(image(1,m)==1)
        y=m;
        break
    end
end
    
x=1;count=1;
xs=zeros;ys=zeros;
im=zeros(240,120);
dir=0;direction=0;

whitecount=nnz(image);

while(count < whitecount)
    
    
    for i=1:8
        %display(dir);
        
        if(dir==0)
            xx=x+1;
            yy=y;
        elseif(dir==1)
            xx=x+1;
            yy=y-1;
        elseif(dir==2)
            xx=x;
            yy=y-1;
        elseif(dir==3)
            xx=x-1;
            yy=y-1;
        elseif(dir==4)
            xx=x-1;
            yy=y;
        elseif(dir==5)
            xx=x-1;
            yy=y+1;
        elseif(dir==6)
            xx=x;
            yy=y+1;
        elseif(dir==7)
            xx=x+1;
            yy=y+1;
        
        end
        
        if(xx < 241 && xx > 0 && yy>0 && yy<121)
            if(image(xx,yy)==1)
                
                if(dir==3 || dir==4 || dir==5 || dir==6 || dir==7)
                    direction=1;
                    break
                end
                
                display(count);
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
    
    if(direction==1)
        break;
    end
    
    dir=0;
    
    
end
figure,imshow(im);