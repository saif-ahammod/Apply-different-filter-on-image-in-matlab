%Image Threshhold
im = imread('flower.jpg');
im = rgb2gray(im); %  0.299 * R + 0.587 * G + 0.114 * B
% Set the threshold value
threshold = 90;
% Perform image thresholding
output_im = im  >= threshold;
% Display the original and thresholded images side by side
figure;
subplot(1, 2, 1);
imshow(im);
title('Original Image');
subplot(1, 2, 2);
imshow(output_im);
title('Image After Threshholding');