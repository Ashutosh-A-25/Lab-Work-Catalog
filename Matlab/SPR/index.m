img = imread('salt.png');
filter = ones(3,3)/9;

img1 = imfilter(img,filter);

subplot(2,2,1),imshow(img),title('with salt&pepper noise');
subplot(2,2,2),imshow(img1),title('after removing salt&pepper noise');

imwrite(img1,'final.png');

[psnr,snr] = psnr(img1,img);
fprintf('PSNR value : %0.5f',psnr);