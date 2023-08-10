%Intensity-level image slicing
im = imread('flower.jpg');
im = rgb2gray(im); %  0.299 * R + 0.587 * G + 0.114 * B
inputim = double(im);
% Set the lower and upper thresholds
threshold_buttom = 100;
threshold_top = 200;
% Set the target intensity value
intensity_level = 150;
% Initialize the output image to be the same size as the input image
output_im = zeros(size(inputim));
% Find the pixels within the specified intensity range and replace them
% with the target intensity value
output_im(inputim >= threshold_buttom & inputim <= threshold_top) = intensity_level;
% Convert the output image back to the original data type (e.g., uint8)
output_im = uint8(output_im);
%Display both image
figure;
subplot(1, 2, 1);
imshow(im);
title('Original Image');
subplot(1, 2, 2);
imshow(output_im);
title('Intensity-level Sliced Image');