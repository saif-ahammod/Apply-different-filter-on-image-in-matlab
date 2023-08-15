% Loading input image
InputImage = imread("nightvison_input.jpg");
% Loading input image's green value matrix in a variable
InputImageGreen= InputImage(:,:,2);
% Calculating output red matrix value
OutputImageRed = InputImageGreen/2;
% Calculating output blue matrix value
OutputImageBlue = OutputImageRed * 2;
% Calculating output green matrix value
OutputImageGreen = OutputImageBlue * 2;
% Concatening the red green and blue value matrix in output image
OutputImage = cat(3, OutputImageRed, OutputImageGreen, OutputImageBlue);
% Display Input and Output Image
tiledlayout(1,2);
nexttile
imshow(InputImage);
title("Original Image");
nexttile
imshow(OutputImage);
title("Nightvision Image");