function [ out_image ] = lsy_slide( image, rows, cols, step_r, step_c)

out_image = zeros(size(image,1),size(image,2),3);
out_image = im2uint8(out_image);
out_image(:,:,:)=255;

for i =1:step_r:(size(image,1)-rows+1)
    for j=1:step_c:(size(image,2)-cols+1)
        im=image(i:i+rows-1, j:j+cols-1,:);
        imshow(im);
        [~, maxlabel] = lsy_caffe_classification(im,1); 
        switch maxlabel
        case 1
             out_image(i:i+rows-1,j:j+cols-1,:)=im;
        end
    end
end