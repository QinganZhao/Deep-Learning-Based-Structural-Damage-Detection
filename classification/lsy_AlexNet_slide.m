% 在单张大图片扫描过程中的变步长滑移
% 将扫描分类结果中属于第二类的图片去掉，保留属于第二类特征的图片并输出

clear;close all; clc;
files = dir('*.jpg');
l = length(files);

for i=1:l
    filename=files(i).name;
    im=imread(filename);
    [out_image] = lsy_slide( im, 128, 128, 64, 64);
    imwrite(out_image,['D:\caffe-master\matlab\demo\final\',num2str(i),'.jpg']);
    
end