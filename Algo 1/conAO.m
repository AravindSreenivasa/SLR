function letter=conAO(im)

%I=imread('data\a.jpg');
%im = im2bw(I, graythresh(I));
img=outline(im);

image=zeros(240,120);
for i=1:240
    for j=1:120
        if(img(i,j)==1)
        image(i,j)=1;
        end
    end
end
%imshow(image);
for m=1:240
    if(image(m,1)==1)
        x=m;
        break
    end
end
    
y=1;count=1;
xs=zeros;ys=zeros;
im=zeros(240,120);
dir=0;direction=0;fin=0;
ct=0;pflag=zeros;ptr=1;fing=0;
tx=zeros;ty=zeros;h=1;
tflags=zeros;

whitecount=nnz(image);

while(count < whitecount)
    
    %display('hi');
  for i=1:8
        %display(dir);
        if(dir==0)
            xx=x-1;
            yy=y;
            flag=0;
        elseif(dir==1)
            xx=x-1;
            yy=y+1;
            flag=0;
        elseif(dir==2)
            xx=x;
            yy=y+1;
            flag=flag;
         elseif(dir==3)
            xx=x+1;
            yy=y+1;
            flag=1;
        elseif(dir==4)
            xx=x+1;
            yy=y;
            flag=1;
        elseif(dir==5)
            xx=x+1;
            yy=y-1;
            flag=1;
        elseif(dir==6)
            xx=x;
            yy=y-1;
            flag=flag;
        elseif(dir==7)
            xx=x-1;
            yy=y-1;
            flag=0;
        end
        
        if(xx < 241 && xx > 0 && yy>0 && yy<121)
            if(image(xx,yy)==1)
                if(pflag(1)~=flag && pflag(2)~=flag && pflag(3)~=flag)
                    fing=fing+1;
                    tx(h)=xx;
                    ty(h)=yy;
                    tflags(h)=flag;
                    h=h+1;
                end
                if(flag==0)
                    ct=ct+1;
                end
                if(flag==1)
                    ct=0;
                end
                x=xx;
                y=yy;
                im(x,y)=1;
                xs(count)=xx;
                ys(count)=yy;
                count=count+1;
                if(ct>50 && fing>=1)
                    fin=1;
                    break;
                end
                pflag(ptr)=flag;
                ptr=ptr+1;
                ptr=mod(ptr,4);
                ptr=ptr+1;
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
    if(fin==1)
            break;
    end
end

if(fing>3)
    letter='a';
else
    letter='o';
end

%display(fing);
%figure,imshow(im);

end