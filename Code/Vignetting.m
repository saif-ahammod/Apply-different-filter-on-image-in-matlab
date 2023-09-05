%Loading input image
InputImage = imread("poster_input.jpg");

% Create a meshgrid for the image
[X, Y] = meshgrid(1:size(InputImage, 2), 1:size(InputImage, 1));
% Define the center of the vignetting effect
centerX = size(InputImage, 2) / 2;
centerY = size(InputImage, 1) / 2;
% Calculate the distance from the center
distance = sqrt((X - centerX).^2 + (Y - centerY).^2);
% Definig the strength of the vignetting effect
vignetteStrength = 0.3;
% Apply the vignetting effect
OutputImageS3 = uint8(double(InputImage) .* (1 - vignetteStrength * (distance / max(distance(:)))));

vignetteStrength = 0.5;
% Apply the vignetting effect
OutputImageS5 = uint8(double(InputImage) .* (1 - vignetteStrength * (distance / max(distance(:)))));

vignetteStrength = 0.8;
% Apply the vignetting effect
OutputImageS8 = uint8(double(InputImage) .* (1 - vignetteStrength * (distance / max(distance(:)))));

%Display Input and Output Image
% Display Input and Output Image
subplot(1,4, 1);
imshow(uint8(uint8(InputImage)), []);
title('Input image');
subplot(1,4, 2);
imshow(uint8(uint8(OutputImageS3)), []);
title('Output image strength .3');
subplot(1,4, 3);
imshow(uint8(uint8(OutputImageS5)), []);
title('Output image strength .5');
subplot(1,4, 4);
imshow(uint8(uint8(OutputImageS8)), []);
title('Output image strength .8');
