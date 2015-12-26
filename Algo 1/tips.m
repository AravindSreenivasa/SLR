function letter = tips(I)

%I=imread('data\x.jpg');
%img = im2bw(I, graythresh(I));
%im=img(1:240,1:120);
im=I;
%imtool(im);
%hold on;
fing=0;wc=0;tipx=0;tipy=0;tx=0;ty=0;
storek=0;xs=zeros;ys=zeros;
count=1;finger=0;sk=0;cnt=0;

[x y]=size(im);
x1 = x/5;
xx = floor(x1);

whitecount = nnz(im(xx,:));

blackcount = 120-whitecount;

row=xx;

for col = 1:y-1
    if(im(row,col)~=im(row,col+1))
        cnt=cnt+1;
    end
end 

if((whitecount < blackcount)||(cnt==6))
%display('hi');
for i=1:(x*0.2)
    fing=0;storek=999;sk=999;
    for j=1:y-1
        if(im(i,j)~=im(i,j+1))
            fing=fing+1;
            
        end
        if(im(i,j)==1)
            for k=1:y
                
               if(im(i,j+k)==0)
                   break
               end
               sk=k;
            end
            tipx=i;
            tip=j+(sk/2);
            tipy=abs(tip);
            %display(tipx);display(tipy);
            j=j+sk;
        end
        if(storek>sk)
            tx=floor(tipx);
            ty=floor(tipy);
            storek=sk;
            
        end
    end
    if(finger<fing)
        finger=fing;
        xs(count)=tx;
        ys(count)=ty;
        count=count+1;
        %plot(ty,tx,'Color','r','LineWidth',5);
        
    end
end

end

count=count-1;
%display(count);

if(count==3)
    letter=threefinger(xs,ys);
elseif(count==2)
    letter=twofingers(im);
elseif(count==1)
    letter=onefinger(im,xs,ys);
elseif(count==0)
    letter=close(im);
end


%display(letter);
end