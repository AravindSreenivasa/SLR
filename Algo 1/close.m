function letter=close(im)

%I=imread('data\g.jpg');
%img = im2bw(I, graythresh(I));
%im=img(1:240,1:120);
w=nnz(im(:,96));

b=240-w;

if(b>(w*1.2))
    letter=conGH(im);
else
    letter=closed(im);
end

end

function letter=conGH(im)

[x y]=size(im);
cnt=0;
for i = 1:x-1
    if(im(i,96)~=im(i+1,96))
        
        cnt=cnt+1;
    end
end

cnt=cnt/2;

if(cnt==1)
    letter='h';
else
    letter='g';
end

end