arr=zeros(2,4);
arr=[110,50,84,96; 115,60,89,100];

match=zeros(4,1);
  b=[112,49,86,96]; 
    for i= 1 : 2
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
   
    
    

        