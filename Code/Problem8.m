% Read the image
InputImage = imread('tiger.png');
% Convert the image to grayscale if it's a color image
if size(image, 3) == 3
    InputImage = rgb2gray(InputImage);
end
% Define filter range
FilterRange = 1;
% Initialize filtered images
OutputMedianFiltered = InputImage;
OutputMinFiltered = InputImage;
OutputMaxFiltered = InputImage;
% Apply filters
%Loop for accessing row of the image matrics
for i = 1 + FilterRange : size(InputImage, 1) - FilterRange
%Loop for accessing column of the image matrics
for j = 1 + FilterRange : size(InputImage, 2) - FilterRange
%Creating image neighbour
neighbor = InputImage(i - FilterRange : i + FilterRange, j - FilterRange : j + FilterRange);
OutputMedianFiltered(i, j) = median(neighbor(:));
OutputMinFiltered(i, j) = min(neighbor(:));
OutputMaxFiltered(i, j) = max(neighbor(:));
end
end
% Display the original and filtered images
subplot(1, 4, 1), imshow(InputImage), title('Original Image');
subplot(1, 4, 2), imshow(uint8(OutputMedianFiltered)), title('Median Filtered');
subplot(1, 4, 3), imshow(uint8(OutputMinFiltered)), title('Minimum Filtered');
subplot(1, 4, 4), imshow(uint8(OutputMaxFiltered)), title('Maximum Filtered');