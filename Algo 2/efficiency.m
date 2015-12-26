load train3

load training

k=1;l=1;
count=zeros(24,1);
letters=zeros(24,7);

a=5.7895;b=10.3682;c=5.0508;d=17.0171;e=5.8878;f=19.9467;g=5.2972;h=11.9936;

for j=1:168
    count=zeros(24,1);
    d1=Training(j,1);
    d2=Training(j,2);
    d3=Training(j,3);
    d4=Training(j,4);
    d5=Training(j,5);
    d6=Training(j,6);
    d7=Training(j,7);
    d8=Training(j,8);

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
        %e=e1;
    end
    
    f1=abs(train(i,6)-d6);
    if(f1<f)
        count(i)=count(i)+1;
        %f=f1;
    end
    
    g1=abs(train(i,1)-d7);
    if(g1<g)
        count(i)=count(i)+1;
        %g=g1;
    end
    
    
    h1=abs(train(i,1)-d8);
    if(h1<h)
        count(i)=count(i)+1;
        %h=h1;
    end
end
cc=0;
for m=1:24
    if(count(m)>cc)
        letter=m;
        cc=count(m);
    end
end

%lt=letter/6;

%for k=1:24
 %   if(lt<=k)
 %       ltr=k;
 %       break;
 %   end
%end
%letters(n)=ltr;
%n=n+1;
letters(k,l)=letter;
if(mod(l,7)==0)
    l=0;
    k=k+1;
end
l=l+1;
%display(ltr);

end