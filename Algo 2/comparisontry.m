arr=zeros(26,4);
match=zeros(4);
srcFiles = dir('DB\*.jpg');

for i=1: length(srcFiles)
    filename = strcat('DB\',srcFiles(i).name);
    d = centroid(filename);
    arr(i,1)=d(1);
    arr(i,2)=d(2);
    arr(i,3)=d(3);
    arr(i,4)=d(4);
end
    i=imread(input);
    b=centroid(i);
    for i= 1 : 26
        for j= arr(i,1)-2 : arr(i,1) +2
            if b(1) == j
                match(1)=1;
                break;
            else
                match(1)=0;
            end
        end
        for j= arr(i,2)-2 : arr(i,2) +2
            if b(2) == j
                match(2)=1;
                break;
             else
                match(2)=0;
            end
        end
        for j= arr(i,3)-2 : arr(i,3) +2
            if b(3) == j
                match(3)=1;
                break;
            else
                match(3)=0;
            end
        end
        for j= arr(i,4)-2 : arr(i,4) +2
            if b(4) == j
                match(4)=1;
                break;
            else
                match(4)=0;
            end
        end
        if match(1)==1 && match(2)==1 && match(3)==1 && match(4)==1
            display(i);
        end
    end
    
    

        