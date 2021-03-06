%% MyMainScript

tic;
clc;
clear;
%% Original Image
img = imread('../data/barbara256.png');
figure, imagesc(img), colormap(gray(256)), axis image, title('Original image');

%% Ideal low pass filter
D=40;
[new_img, H] = ideal_low_pass_filter(img, D);
figure, imagesc(uint8(abs(new_img))), title('Ideal Low Pass Filter with D=40'), axis image,colormap(gray(256));
figure, imagesc(H, [min(min(H)) max(max(H))]); colormap(jet); colorbar, axis image, title('Ideal Filter with D=40');

D=80;
[new_img, H] = ideal_low_pass_filter(img, D);
figure, imagesc(uint8(abs(new_img))), title('Ideal Low Pass Filter with D=80'), axis image, colormap(gray(256));
figure, imagesc(H, [min(min(H)) max(max(H))]); colormap(jet); colorbar, axis image, title('Ideal Filter with D=80');

%% Gaussian low pass filter
D=40;
[new_img, H] = gaussian_low_pass_filter(img, D);    
figure, imagesc(uint8(abs(new_img))), title('Gaussian Low Pass Filter with sigma = 40'), axis image, colormap(gray(256));
figure, imagesc(H, [min(min(H)) max(max(H))]); colormap(jet); axis image, colorbar, title('Gaussian Filter with Sigma = 40');

D=80;
[new_img, H] = gaussian_low_pass_filter(img, D);
figure, imagesc(uint8(abs(new_img))), title('Gaussian Low Pass Filter with sigma = 80'), axis image, colormap(gray(256));
figure, imagesc(H, [min(min(H)) max(max(H))]); colormap(jet); axis image, colorbar, title('Gaussian Filter with Sigma = 80');

toc;
