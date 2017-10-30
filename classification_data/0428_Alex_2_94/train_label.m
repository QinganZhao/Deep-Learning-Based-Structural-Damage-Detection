clear all
clc
foodDir='D:\caffe-master\projects\20170428\train'
numClasses=2
classes=dir(foodDir)
classes=classes([classes.isdir])
classes={classes(3:numClasses+2).name}
imageName={}
fp=fopen('train.txt','a')
for ci=1:length(classes)
    ims=dir(fullfile(foodDir,classes{ci},'*.jpg'))'
    for ii=1:length(ims)
        fprintf(fp,classes{ci})
        fprintf(fp,'/');
        fprintf(fp,ims(ii).name);
        fprintf(fp,' ')
        fprintf(fp,'%d',ci-1)
        fprintf(fp,'\r\n')
    end
end
fclose(fp)