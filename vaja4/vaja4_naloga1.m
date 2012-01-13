A = imread('data/graf0.png');
A = rgb2gray(A);
figure(1);clf;
subplot(1,2,1);
sigma = 1.0;
thresh = 1000;
imagesc(hessov_detektor2(A, sigma, thresh));
[ix, iy] = hessov_detektor(A, sigma, thresh);
subplot(1,2,2);
drawpoints(A, iy, ix, 'r');