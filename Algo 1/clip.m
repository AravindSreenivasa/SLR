I=imread('data\out1.jpg');
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
[r l]=find(image);

x=240;y=37;

px=0;py=0;count=1;cn=0;
im=zeros(240,120);direc=0;
whitecount=nnz(image);

figure,imshow(image);
while(count<=20000)
    
   if(((x)<241 && (x)>0 && (y-1)<121 && (y-1)>0))
        if(image(x,y-1)==1 )
            %cn=cn+1;
           if((x)~=px && (y-1)~=py)
            px=x;py=y;
            x=x;
            y=y-1;
            im(x,y)=1;
            continue
           end
        end
    end
    if(((x-1)<241 && (x-1)>0 && (y-1)<121 && (y-1)>0))
        if( image(x-1,y-1)==1)
            cn=cn+1;display(image(x-1,y-1));
            if((x-1)~=px && (y-1)~=py)
                cn=cn+1;
            px=x;py=y;
            x=x-1;
            y=y-1;
            im(x,y)=1;
            continue
            end
        end
    end
    if(((x)<241 && (x)>0 && (y+1)<121 && (y+1)>0))
        if(image(x,y+1)==1)
            %cn=cn+1;
            if ([x,y+1]~=[px,py])
            px=x;py=y;
            x=x;
            y=y+1;
            im(x,y)=1;
            continue
            end
        end
    end
    if(((x-1)<241 && (x-1)>0 && (y)<121 && (y)>0))
        if(image(x-1,y)==1)
            %cn=cn+1;
            if((x-1)~=px && (y)~=py)
            px=x;py=y;
            x=x-1;
            y=y;
            im(x,y)=1;
            continue
            end
        end
    end
    if(((x-1)<241 && (x-1)>0 && (y+1)<121 && (y+1)>0))
        if(image(x-1,y+1)==1)
            %cn=cn+1;
            if((x-1)~=px && (y+1)~=py)
            px=x;py=y;
            x=x-1;
            y=y+1;
            im(x,y)=1;
            continue
            end
        end
    end
    
    
    if(((x+1)<241 && (x+1)>0 && (y-1)<121 && (y-1)>0))
        if(image(x+1,y-1)==1)
            %cn=cn+1;
            if((x+1)~=px && (y-1)~=py)
            px=x;py=y;
            x=x+1;
            y=y-1;
            im(x,y)=1;
            continue
            end
        end
    end
    if(((x+1)<241 && (x+1)>0 && (y)<121 && (y)>0))
        if(image(x+1,y)==1)
            %cn=cn+1;
            if ((x+1)~=px && (y)~=py)
            px=x;py=y;
            x=x+1;
            y=y;
            im(x,y)=1;
            continue
            end
        end
    end
    if(((x+1)<241 && (x+1)>0 && (y+1)<121 && (y+1)>0))
        if(image(x+1,y+1)==1)
            %%cn=cn+1;
            if((x+1)~=px && (y+1)~=py)
            px=x;py=y;
            x=x+1;
            y=y+1;
            im(x,y)=1;
            continue
            end
        end
    end
     
     count=count+1;
end
wh=nnz(im);
display(wh);
imshow(im);
%close;
display(count);