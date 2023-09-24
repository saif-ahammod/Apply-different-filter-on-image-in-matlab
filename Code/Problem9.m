% Reading image
InputImage = imread('flower.jpg');
% Convert the image to grayscale if it's a color image
if size(InputImage, 3) == 3
    InputImage = rgb2gray(InputImage);
end
% Convert to double for calculations
InputImage = double(InputImage); 
% Define Filters
Filter1 = [-1 -2 -1; 0 0 0; 1 2 1];
Filter2 = [-1 0 1; -2 0 2; -1 0 1];
% Get image dimensions
[height, width] = size(InputImage);
% Initialize arrays for gradient magnitude and orientation
Output = InputImage;
% Loop through the image to compute gradients
for row = 2 : height - 1
    for column = 2 : width - 1
        % Apply convulational filters
        gx = sum(sum(InputImage(row-1:row+1, column-1:column+1) .* Filter1));
        gy = sum(sum(InputImage(row-1:row+1, column-1:column+1) .* Filter2));
        % Calculate edge
        Output(row, column)  = sqrt(gx.^2 + gy.^2);
    end
end
% Display the original image and edge magnitude
subplot(1, 2, 1), imshow(uint8(InputImage)), title('Original Image');
subplot(1, 2, 2), imshow(Output, []), title('Edge Magnitude');