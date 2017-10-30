function [ out_image,sum ] = z_varslide( image, mrows, mcols, lrows, lcols, winn, net  )
%返回具有黑框标记的图像，及黑框个数
%  输入参数：图像矩阵，滑动窗的最小行数，最小列数，最大行数，最大列数，神经网络
out_image = image;

sum = 0;
if(winn==1)
    dr=0;dc=0;
else
    dr = round((lrows-mrows)/(winn-1));
    dc = round((lcols-mcols)/(winn-1));
end
for j = 0:winn-1;
    i=winn-1-j;
    [ locat, n, image ] = z_slide( image, mrows+dr*i, mcols+dc*i, round((mrows+dr*i)/3) ,net);
    sum = sum + n ;
    for k=1:n
        out_image(locat(k,1):(locat(k,1)-1+mrows+dr*i),locat(k,2):locat(k,2)+3,:)=0;
        out_image(locat(k,1):(locat(k,1)-1+mrows+dr*i),(locat(k,2)-1+mcols+dc*i)-3:(locat(k,2)-1+mcols+dc*i),:)=0;
        out_image(locat(k,1):locat(k,1)+3,locat(k,2):(locat(k,2)-1+mcols+dc*i),:)=0;
        out_image((locat(k,1)-1+mrows+dr*i)-3:(locat(k,1)-1+mrows+dr*i),locat(k,2):(locat(k,2)-1+mcols+dc*i),:)=0;
    end
end

