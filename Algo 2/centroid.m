function [d1 d2 d3 d4 d5 d6 d7 d8]=centroid(I)

%I=imread('data\a.jpg');
%imgs=im2bw(I,graythresh(I));
%img=imgs(1:240,1:120);
img=I;
img1=outline(img);
ar=bwarea(img1);
%figure,imshow(img1);

[r l]=find(img1);

sumX=sum(r);
sumY=sum(l);

x=sumX/ar;
y=sumY/ar;
%x=120;
%y=60;

x1=1;y1=60;
x2=120;y2=120;
x3=240;y3=60;
x4=120;y4=1;

for i=2:120
    if(img(1,i)~=img(1,i-1))
        x1=1;
        y1=i;
    end
end

for i=2:120
    if(img(1,120-i+1)~=img(1,120-i+2))
        x11=1;
        y11=i;
    end
end

for i=2:240
    if(img(i,120)~=img(i-1,120))
        x2=i;
        y2=120;
    end
end

for i=2:240
    if(img(240-i+1,120)~=img(240-i+2,120))
        x22=i;
        y22=120;
    end
end

for i=2:120
    if(img(240,i)~=img(240,i-1))
        x3=240;
        y3=i;
    end
end

for i=2:120
    if(img(240,120-i+1)~=img(240,120-i+2))
        x33=240;
        y33=i;
    end
end

for i=2:240
    if(img(i,1)~=img(i-1,1))
        x4=i;
        y4=1;
    end
end

for i=2:240
    if(img(240-i+1,1)~=img(240-i+2,1))
        x44=i;
        y44=1;
    end
end

xx=abs(x-x1);
yy=abs(y-y1);
d1=sqrt(xx*xx+yy*yy);

xx=abs(x-x2);
yy=abs(y-y2);
d2=sqrt(xx*xx+yy*yy);

xx=abs(x-x3);
yy=abs(y-y3);
d3=sqrt(xx*xx+yy*yy);

xx=abs(x-x4);
yy=abs(y-y4);
d4=sqrt(xx*xx+yy*yy);

xx=abs(x-x11);
yy=abs(y-y11);
d5=sqrt(xx*xx+yy*yy);

xx=abs(x-x22);
yy=abs(y-y22);
d6=sqrt(xx*xx+yy*yy);

xx=abs(x-x33);
yy=abs(y-y33);
d7=sqrt(xx*xx+yy*yy);

xx=abs(x-x44);
yy=abs(y-y44);
d8=sqrt(xx*xx+yy*yy);

%Training(1)=d1;
%Training(2)=d2;
%Training(3)=d3;
%Training(4)=d4;

%Group='a';

%SVMStruct = svmtrain(Training, Group);

end