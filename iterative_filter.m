im_arch = imread("delicate_arch.jpg");
im_arch = double(im_arch)./255;

sigma=2;
degsmooth=8;

im_filt=imbilatfilt(im_arch,degsmooth,sigma);
filtered_once=imbilatfilt(im_arch,8,6);

for c = 1:5
     im_filt=imbilatfilt(im_filt,degsmooth,sigma);
end

subplot(2,2,1);
imshow(im_arch);
title('Input image')

subplot(2,2,2);
imshow(filtered_once);
title('Image filtered once with sigma=6')

subplot(2,2,4);
imshow(im_filt);
title('Image filtered 10 times with sigma=2')

sharp=im_arch+(im_arch-im_filt);
subplot(2,2,3);
imshow(sharp);
title('Image Sharpened')