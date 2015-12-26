%function letter=compare(I)

load train3

img=imread('TEST2\u.jpg');
I=preprocess(img);
%img= im2bw(img, graythresh(img));
%[xx yy]=size(img);
%I=img(1:xx-1,1:yy-1);
count=zeros(24,1);

a=10;b=10;c=10;d=10;e=10;f=10;g=10;h=10;

[d1 d2 d3 d4 d5 d6 d7 d8]=centroid(I);

for i=1:24
    
    a1=abs(train(i,1)-d1);
    if(a1<a)
        count(i)=count(i)+1;
        %a=a1;
    end
    
    b1=abs(train(i,2)-d2);
    if(b1<b)
        count(i)=count(i)+1;
        %b=b1;
    end
    
    c1=abs(train(i,3)-d3);
    if(c1<c)
        count(i)=count(i)+1;
        %c=c1;
    end
    
    d1=abs(train(i,4)-d4);
    if(d1<d)
        count(i)=count(i)+1;
        %d=d1;
    end
    
    e1=abs(train(i,5)-d5);
    if(e1<e)
        count(i)=count(i)+1;
        %d=d1;
    end
    
    f1=abs(train(i,6)-d6);
    if(f1<f)
        count(i)=count(i)+1;
        %d=d1;
    end
    
    g1=abs(train(i,1)-d7);
    if(g1<g)
        count(i)=count(i)+1;
        %d=d1;
    end
    
    
    h1=abs(train(i,1)-d8);
    if(h1<h)
        count(i)=count(i)+1;
        %d=d1;
    end
end
cc=0;
for i=1:24
    if(count(i)>cc)
        letter=i;
        cc=count(i);
    end
end

display(letter);

