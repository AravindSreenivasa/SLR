function letter = twofingers(img)

[rows,cols] = size(img);
count=0;
rw = rows/5;
row = floor(rw);
%display(col);
hold on

for col = 1:cols-1
    if(img(row,col)~=img(row,col+1))
        count=count+1;
    end
end 

count=count/2;

if(count==1)
    letter = 'u';
else
    letter = 'v';
end

end
