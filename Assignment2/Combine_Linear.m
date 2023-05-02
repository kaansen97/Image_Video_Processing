im_arch = imread("delicate_arch.jpg");
im_arch = double(im_arch)./255;

% im_arch = histeq(im_arch,10);
im_arch_blur = imgaussfilt(im_arch,6,"FilterSize",3);

subplot(1,2,1);
imshow(im_arch);
title('Input image')

subplot(1,2,2);
Sharp=im_arch+(im_arch-im_arch_blur);
imshow(Sharp);
title('Image Sharpened with sigma = 6, Kernel size = 3')

