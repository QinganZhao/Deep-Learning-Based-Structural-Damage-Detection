function [ out_image,n,image ] = z_slide( image, rows, cols, step,net )
%窗口尺寸不变的滑动窗函数
%   参数：图像变量矩阵，窗口行数，列数，步长，神经网络对象
win = zeros(rows, cols, 3);
out_image = zeros(1,2);
n = 0;
for i = 1:step:(size(image,1)-rows)
    for j = 1:step:(size(image,2)-cols)
        win = image(i:i+rows-1,j:j+cols-1,:);
        %imshow(win);
        im_ = single(win) ; % note: 0-255 range
        im_ = imresize(im_,net.meta.inputSize) ;
%        im_ = im_ - net.meta.data_mean;
        % run the CNN
        res = vl_simplenn(net, im_,[],[],...
                      'accumulate', 0, ...
                      'mode', 'test', ...
                      'backPropDepth', inf, ...
                      'sync', 0, ...
                      'cudnn', 1) ;
        % obtain the CNN otuput
        scores = res(8).x(1,1,:);
        [bestScore, best] = max(scores);
        switch best               
            case 2
                n=n+1;
                out_image(n,:)=[i,j];
                image(i:i+rows-1,j:j+cols-1,:)=255;
                
        end


        


        % show the classification results
        
        
    end
end


end

