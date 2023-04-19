im_arch = imread("delicate_arch.jpg");
im_arch = double(im_arch)./255;

sigma=2;
degsmooth=8;

im_filt=imbilatfilt(im_arch,degsmooth,sigma);
filtered_once=imbilatfilt(im_arch,8,6);
gaus_once=imgaussfilt(im_arch,6);
im_gauss=imgaussfilt(im_arch,2);

for c = 1:9
     im_filt=imbilatfilt(im_filt,degsmooth,sigma);
     im_gauss=imgaussfilt(im_gauss,2);
end

% subplot(2,2,1);
% imshow(im_arch);
% title('Input image')

subplot(2,2,1);
imshow(filtered_once);
title('Image filtered once with sigma=6')

subplot(2,2,2);
imshow(im_filt);
title('Image filtered 10 times with sigma=2')


subplot(2,2,3);
imshow(gaus_once);
title('Image gaussian once with sigma=6')

subplot(2,2,4);
imshow(im_gauss);
title('Image gaussian with 10 times sigma=2')