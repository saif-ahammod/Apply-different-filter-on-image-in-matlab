%Loading input image
InputImage = imread("mirror_input.jpg");
% Copying the input image in a variable
OutputImage = InputImage;
for color = 1 : size(InputImage, 3)
    for row = 1 : size(InputImage, 1)
        temp = size(InputImage, 2);
        for column = 1 : size(InputImage, 2)
            OutputImage(row,temp,color) = InputImage(row,column,color);
            temp = temp-1;
        end
    end
end
%Display Input and Output Image
tiledlayout(1,2);
nexttile
imshow(InputImage);
title("Original Image");
nexttile
imshow(OutputImage);
title("Mirror Image");