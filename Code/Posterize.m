
% Loading input image
InputImage = imread("flower_in.jpg");
% Copying the input image in 2 variables
OutputImageColors_64 = InputImage;
OutputImageColors_8 = InputImage;

% In our first output there will be 2 range so it will contain 8 colors
% This loop is for seperating the 3 R,G,B matrixs 
for color = 1 : size(InputImage, 3)
    % This loop is for row of the matrix
     for row = 1 : size(InputImage, 1)
         % This loop is for column of the matrix
        for column = 1 : size(InputImage, 2)
            % Converting the  input image pixel value into double
            double_im = double(InputImage(row,column,color));
            % Calculation the range of the pixel value
            image_range = (floor(double_im/128)+1);
            % Setting the specific pixel value for the specific range
            if image_range == 1
                RangedImage = 96;
            elseif image_range == 2
                RangedImage = 224;
            end
            % Setting the pixel value to output image
            OutputImageColors_8(row, column, color) = RangedImage;
        end
     end
end
% In our second output there will be 4 ranges so it will contain 64 colors
% This loop is for seperating the 3 R,G,B matrixs
for color = 1 : size(InputImage, 3)
    % This loop is for row of the matrix
     for row = 1 : size(InputImage, 1)
         % This loop is for column of the matrix
        for column = 1 : size(InputImage, 2)
            % Converting the  input image pixel value into double
            double_im = double(InputImage(row,column,color));
            % Calculation the range of the pixel value
            image_range = (floor(double_im/64)+1);
            % Setting the specific pixel value for the specific range
            if image_range == 1
                RangedImage = 32;
            elseif image_range == 2
                RangedImage = 96;
            elseif image_range == 3
                RangedImage = 160;
            elseif image_range == 4
                RangedImage = 224;
            end
            % Setting the pixel value to output image
            OutputImageColors_64(row, column, color) = RangedImage;
        end
     end
end


% Display Input and Output Image
tiledlayout(1,3);
nexttile
imshow(InputImage)
title("Original")
nexttile
imshow(OutputImageColors_8)
title("2 range, 8 colors")
nexttile
imshow(OutputImageColors_64)
title("4 range, 64 colors")


