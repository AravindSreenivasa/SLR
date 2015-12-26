function letter = onefinger(img,xs,ys)

if((120-ys(1))<31)
    letter = 'd';
    
elseif((120-ys(1))>89)
    letter = conIY(img);
else
    letter = conKLR(img);
end

end


function letter = conIY(img)

[x y]=size(img);
y = (4*y)/5;
yy = floor(y);

whitecount = nnz(img(:,yy));

blackcount = 120-whitecount;

if(whitecount > (blackcount*2))
    letter = 'i';
else
    letter = 'y';
end

end


function letter = conKLR(img)
img=im2bw(img);
img=img(1:240,1:120);

w=nnz(img(:,96));

b=240-w;
if(b<w)
    letter='r';
else

    letter=conKL(img);

end

end


