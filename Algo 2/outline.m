function image=outline(I)

%I=imread('data\b.jpg');
%img = im2bw(I, graythresh(I));
%im=img(1:240,1:120);
im=I;
image=zeros(240,120);
for i=1:240
    for j=2:120
        if(im(i,j)~=im(i,j-1))
            image(i,j)=1;
        end
    end
end
for j=1:120
    for i=2:240
        if(im(i,j)~=im(i-1,j))
            image(i,j)=1;
        end
    end
end

[x y]=find(image(1,:));
for i=min(y):max(y)
    image(1,i)=1;
end

[x y]=find(image(:,120));
for i=min(x):max(x)
    image(i,120)=1;
end

[x y]=find(image(:,1));
for i=min(x):max(x)
    image(i,1)=1;
end
%display('Hi');
%figure,imshow(img);
%figure,imshow(image);

%f = getframe(gca);
%BWsdil = frame2im(f);
%imwrite(BWsdil, 'data\bb.jpg');

%close;
%close;

end