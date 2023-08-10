%Logtransformation ang gamma correction
im = imread('flower.jpg');
im = rgb2gray(im); %  0.299 * R + 0.587 * G + 0.114 * B
%Log Transformation
% Converting image into double
double_im= double(im)/255;
% c is a constant where c can be greater then or equal to 0;
c = 1;
% log transformation: Output_image = Constent * log(inputimage + 1)
s = c * log (double_im +1);
%Gamma Correction
% Gamma value for gamma correction
% Here we are setting manual input of gaama g
g = .8;
% a is a constant which value is greater then 0
a = 1;
%Gamma correction Output_Image = Constant * (Input_Image)^gamma 
v = a * (double_im .^ g);
figure;
%Input Image
subplot(2, 3, 1);
imshow(im);
title('Input Gray Image');
%Log transformation
subplot(2, 3, 2);
imshow(s);
title('Log transformation');
%Gamma correction
subplot(2, 3, 3);
imshow(v);
title('Gamma Correction');
