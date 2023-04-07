im_arch = imread("delicate_arch.jpg");
im_arch = double(im_arch)./255;
im_arch = histeq(im_arch,10);
im_arch_blur = imgaussfilt(im_arch,3);
im_arch = imgaussfilt(im_arch,2);

im_ed = edge(im2gray(im_arch_blur),"canny");
sec = strel('square',2);
seo = strel('square',1);
%im_arch = imgaussfilt(im_arch,2);
im_ed = imerode(im_ed,seo);
im_ed = imdilate(im_ed,sec);
%im_ed = imdilate(im_ed,sec);
im_ed =cat(3, im_ed,im_ed,im_ed);
%imshow(im_ed)
imshow(im_arch-im_ed)