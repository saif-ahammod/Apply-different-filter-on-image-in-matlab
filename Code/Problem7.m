% Load the grayscale image
im = imread('flower.jpg');
resim = imresize(im,.25);
gim = rgb2gray(resim); %  0.299 * R + 0.587 * G + 0.114 * B
gim = double(gim); % Convert to double

% Define the custom filter
f = 1/273 * [1 4 7 4 1; 4 16 26 16 4; 7 26 41 26 7; 4 16 26 16 4; 1 4 7 4 1];

% Get the size of the image
[r, c] = size(gim);

% Initialize filtered image
fIm = zeros(r, c);

% Apply the custom filter using convolution
for row = 3 : r - 2
    for col = 3 : c - 2
        neighborhood = gim(row-2:row+2, col-2:col+2);
        filtered = sum(sum(neighborhood .* f));
        fIm(row, col) = filtered;
    end
end

% Display the original and filtered images
subplot(1, 2, 1);
imshow(uint8(gim));
title('Original Image');

subplot(1, 2, 2);
imshow(uint8(fIm));
title('Filtered Image');