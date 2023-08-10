im = imread('flower.jpg');
resim = imresize(im,.25);
gim = rgb2gray(resim); %  0.299 * R + 0.587 * G + 0.114 * B
gim = double(gim); % Convert to double

% Define the filters
f1 = 1/9 * ones(3);
f2 = 1/16 * [1 2 1; 2 4 2; 1 2 1];

% Get the size of the image
[r, c] = size(gim);

% Initialize filtered images
fIm1 = zeros(r, c);
fIm2 = zeros(r, c);

% Apply Filter 1
for row = 2 : r - 1
    for col = 2 : c - 1
        neighborhood = gim(row-1:row+1, col-1:col+1);
        filtered = sum(sum(neighborhood .* f1));
        fIm1(row, col) = filtered;
    end
end
% Apply Filter 2 manually using convolution
for row = 2 : r - 1
    for col = 2 : c - 1
        neighborhood = gim(row-1:row+1, col-1:col+1);
        filtered = sum(sum(neighborhood .* f2));
        fIm2(row, col) = filtered;
    end
end
% Display the original and filtered images
subplot(1, 3, 1);
imshow(uint8(gim));
title('Original Image');

subplot(1, 3, 2);
imshow(uint8(fIm1));
title('Filtered Image 1');

subplot(1, 3, 3);
imshow(uint8(fIm2));
title('Filtered Image 2');