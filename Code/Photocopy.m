%Loading input image
InputImage = imread("flower.jpg");
%Convert the input image into grayscale
GrayImage = rgb2gray(InputImage);
%Convert the Gray image's pixel value into double
GrayImageDouble = double(GrayImage);
% Copying the input image in a variable
OutputImaget80 = GrayImageDouble;
%Selecting a threshhold value for applying effects
Threshold = 100;
% This loop is for row of the matrix
for row = 1 : size(GrayImageDouble, 1)
    % This loop is for column of the matrix
    for column = 1 : size(GrayImageDouble, 2)
        % If pixel value is less then the threshold value then calculate
        % the pixel value from the formula. 
        % NewPixelVal = (PixelValue * (Threshold - PixelValue))/ Threshold^2
        if  Threshold > GrayImageDouble(row,column)
            OutputImaget80(row, column) = 0;
        else
            % If pixel value is greater than the threshold value then set
            % NewPixelVal = 255;
            OutputImaget80(row, column) = 255;
        end
    end
end
%Display Input and Output Image
% Display Input and Output Image
subplot(1,2, 1);
imshow(uint8(uint8(InputImage)), []);
title('Input image');
subplot(1,2, 2);
imshow(uint8(uint8(OutputImaget80)), []);
title('Output image');
