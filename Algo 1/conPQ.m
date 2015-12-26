function letter=conPQ(im)

img=im(1:240,1:120);

for m=1:240
    if img(m,120)==1
        break;
    end
end

x=m;

xx=(4*240)/5;

if x < xx
    letter='p';
    %display('k');
else
    letter='q';
    %display('l');
    
end

end