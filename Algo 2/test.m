
srcFiles = dir('TEST2\*.jpg');
Training=zeros(168,8);
Group=zeros(1,1);
train=zeros(24,8);
for i=1: length(srcFiles)
    filename = strcat('TEST2\',srcFiles(i).name);
    img=imread(filename);
    I=preprocess(img);
    [d1 d2 d3 d4 d5 d6 d7 d8] = centroid(I);
    Training(i,1)= d1;
    Training(i,2)= d2;
    Training(i,3)= d3;
    Training(i,4)= d4;
    Training(i,5)= d5;
    Training(i,6)= d6;
    Training(i,7)= d7;
    Training(i,8)= d8;
end

count=0;
j=1;
h1=0;h2=0;h3=0;h4=0;h5=0;h6=0;h7=0;h8=0;
dd1=0;dd2=0;dd3=0;dd4=0;dd5=0;dd6=0;dd7=0;dd8=0;

for i=1:168
    dd1=dd1 + Training(i,1);
    if(Training(i,1)>h1)
        h1=Training(i,1);
    end
    dd2=dd2 + Training(i,2);
    if(Training(i,2)>h2)
        h2=Training(i,2);
    end
    dd3=dd3 + Training(i,3);
    if(Training(i,3)>h3)
        h3=Training(i,3);
    end
    dd4=dd4 + Training(i,4);
    if(Training(i,4)>h4)
        h4=Training(i,4);
    end
    dd5=dd5 + Training(i,5);
    if(Training(i,5)>h5)
        h5=Training(i,5);
    end
    dd6=dd6 + Training(i,6);
    if(Training(i,6)>h6)
        h6=Training(i,6);
    end
    dd7=dd7 + Training(i,7);
    if(Training(i,7)>h7)
        h7=Training(i,7);
    end
    dd8=dd8 + Training(i,8);
    if(Training(i,8)>h8)
        h8=Training(i,8);
    end
    
    if(mod(i,7)==0)
        dd1=dd1-h1;
        dd1=dd1/6;
        dd2=dd2-h2;
        dd2=dd2/6;
        dd3=dd3-h3;
        dd3=dd3/6;
        dd4=dd4-h4;
        dd4=dd4/6;
        dd5=dd5-h5;
        dd5=dd5/6;
        dd6=dd6-h6;
        dd6=dd6/6;
        dd7=dd7-h7;
        dd7=dd7/6;
        dd8=dd8-h8;
        dd8=dd8/6;
        
        train(j,1)=dd1;
        train(j,2)=dd2;
        train(j,3)=dd3;
        train(j,4)=dd4;
        train(j,5)=dd5;
        train(j,6)=dd6;
        train(j,7)=dd7;
        train(j,8)=dd8;
        
        j=j+1;
        
        h1=0;h2=0;h3=0;h4=0;h5=0;h6=0;h7=0;h8=0;
        dd1=0;dd2=0;dd3=0;dd4=0;dd5=0;dd6=0;dd7=0;dd8=0;
    end
end