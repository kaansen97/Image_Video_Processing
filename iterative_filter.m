im_fer = imread("ferrari.JPG");
im_fer = double(im_fer)./255;

sigma=10.0;
degsmooth=8;

im_filt=imbilatfilt(im_fer,degsmooth,sigma);
filtered_once=imbilatfilt(im_fer,8,40);

for c = 1:5
     im_filt=imbilatfilt(im_filt,degsmooth,sigma);
end

subplot(1,4,1);
imshow(im_fer);
title('Input image')

subplot(1,4,2);
imshow(filtered_once);
title('Image filtered once with sigma=40')

subplot(1,4,3);
imshow(im_filt);
title('Image filtered 5 with sigma=10')

sharp=im_fer+gamma*(im_fer-im_filt);
subplot(1,4,4);
imshow(sharp);
title('Image Sharpened')