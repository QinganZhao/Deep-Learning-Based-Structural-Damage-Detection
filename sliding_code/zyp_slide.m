% setup MatConvNet
%run  matlab/vl_setupnn
% load the pre-trained CNN
% addpath examples/zyptest;
%[net_bn, info_bn] = cnn_mnist('batchNormalization', true);
a = zeros(1,1);
%a = input('Please input the pngs name.\n','s');
a='tree.png';
a = ['Æ»¹û»¬ÒÆ´°¿Ú\MATCONVNET-master\',a];
% load and preprocess an image
im = imread(a);

% addpath test_zypcnn;
[ out_image,n ] = z_varslide( im, 40,40,80,80,3,  net_fc  );figure;imshow(out_image);
saveas(gcf,'myfig.jpg');