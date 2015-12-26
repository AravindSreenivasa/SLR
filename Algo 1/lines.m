function [imgout flag] = lines(img_in)


[f c]=find(img_in);
img_out=img_in(min(f):max(f),min(c):max(c));
[x y]=size(img_out);
cnt=0;ct=1;
xx= x/4;
x3=zeros;

for m=1:xx
    cnt=0;
    for j=2:y
        if(img_out(x-m,j)~=img_out(x-m,j-1))
            cnt=cnt+1;
        end
        
    end
    if(cnt>2)
        x3(ct)=x-m;
        ct=ct+1;
    end
    if(ct>20)
        x2=x3(1);
        break;
    end
        
end

cnt=cnt/2;
I=img_out;
count=0;
x=0;
[x1,y1]=size(I);
w1=(nnz(I(x1-1,:)));

if(cnt>1)
     img= I(1:x2,1:y1);
     flag=1;
else
    flag=2;
    for i= 2:x1
    wc=(nnz(I(x1-i,:)));
    if(wc>=w1)
        count=count+1;
    end
    if(wc<w1)
        count=0;
    end
    if(count>=70)
        x=x1-i+70;
        break;
    end
    w1=wc;
    end
    img= I(1:x,1:y1);
    
end
imgout=imresize(img,[240 120]);
%figure,imshow(imgout);

end