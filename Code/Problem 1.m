%Image Histogram
imo = imread('flower.jpg');
im = rgb2gray(imo); %  0.299 * R + 0.587 * G + 0.114 * B
% Histogram
% Creating a range of 1 to 256 array with values of all zero.
histogram_values = zeros(1, 256);
%Storing the size of input image in r and c
[r, c] = size(im);
%creating a nested loop one for is to define column and another one for row
for i = 1:r
    for j = 1:c
        % storing the input images pixel value in the pixval
        pixval = im(i, j);
        % Incrementing the pixval location in histogram_values array by 1
        histogram_values(pixval + 1) = histogram_values(pixval + 1) + 1;
    end
end
%Normalizing histogram
%counting total pixel of the image
total_pixel = r*c;
%Normalizing the histogram
normalizedHistogram = histogram_values/total_pixel;
%Viewing the input image and houtput histogram
figure;
subplot(2, 3, 1);
imshow(imo)
title('Original Image');
subplot(2, 3, 2);
bar(histogram_values);
title('Generated Histogram');
xlabel('Pixel Value');
ylabel('Frequency');
subplot(2, 3, 3);
bar(normalizedHistogram);
title('Normalized Histogram');
xlabel('Pixel Value');
ylabel('Frequency');
