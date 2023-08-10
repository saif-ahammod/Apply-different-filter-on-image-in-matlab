%Image Blending 
im1 = imread('cat.png');
im2 = imread('dog.png');
% First thing about image blending is all the image have to be the same size
if isequal(size(im1), size(im2))
    % Perform image blending using alpha blending
    bim = (0.5 * double(im1)) + (0.5 * double(im2));
    % Convert the blended image back to the original data type (e.g., uint8)
    bim = uint8(bim);
    figure;
    %Input Image 1
    subplot(2, 3, 1);
    imshow(im1);
    title('Input Image 1');
    %Input Image 1
    subplot(2, 3, 2);
    imshow(im2);
    title('Input Image 2');
    %Blended image
    subplot(2, 3, 3);
    imshow(bim);
    title('Blended Image');
else
    error('Both images should have the same size.');
end