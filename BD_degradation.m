%% MATLAB code for blur-downsampled (BDx4) degradataion
scale = 4;
sigma = 1.6;

% generate LR image
kernelsize = ceil(sigma * 3) * 2 + 2;
kernel = fspecial('gaussian', kernelsize, sigma);
lq = imfilter(gt, kernel, 'replicate');
lq = lq(scale/2:scale:end-scale/2, scale/2:scale:end-scale/2, :);