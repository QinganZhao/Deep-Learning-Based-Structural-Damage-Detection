   
        clear;clc    
      
    im = imread('../../matlab/demo/3.jpg');%读取图片 
    figure;imshow(im);%显示图片 
  %  [scores, maxlabel] = classification_demo(im,1)
    [scores, maxlabel] = lsy_caffe_classification(im,1); 
    %index = importdata('synset_words.txt');  
   %  name = index(maxlabel);  
      
   
    figure;imshow(im);  
    switch maxlabel
        case 1
            str=strcat('分类结果：有裂纹,   得分：',num2str(max(scores)));  
            title(str);  
        case 2
            str=strcat('分类结果：无裂纹,   得分：',num2str(max(scores)));  
            title(str);  
    end
    