
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
dd1=0;dd2=0;dd3=0;dd4=0;dd5=0;dd6=0;dd7=0;dd8=0;

for i=1:168
    dd1=dd1 + Training1(i,1);
    dd2=dd2 + Training1(i,2);
    dd3=dd3 + Training1(i,3);
    dd4=dd4 + Training1(i,4);
    dd5=dd5 + Training1(i,5);
    dd6=dd6 + Training1(i,6);
    dd7=dd7 + Training1(i,7);
    dd8=dd8 + Training1(i,8);
    
    if(mod(i,7)==0)
        dd1=dd1/7;
        dd2=dd2/7;
        dd3=dd3/7;
        dd4=dd4/7;
        dd5=dd5/7;
        dd6=dd6/7;
        dd7=dd7/7;
        dd8=dd8/7;
        
        train(j,1)=dd1;
        train(j,2)=dd2;
        train(j,3)=dd3;
        train(j,4)=dd4;
        train(j,5)=dd5;
        train(j,6)=dd6;
        train(j,7)=dd7;
        train(j,8)=dd8;
        
        j=j+1;
        
        dd1=0;dd2=0;dd3=0;dd4=0;dd5=0;dd6=0;dd7=0;dd8=0;
    end
end