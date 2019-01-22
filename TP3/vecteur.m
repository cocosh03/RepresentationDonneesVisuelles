N = 500;
t = linspace(0,2*pi,500);
v = cos(2*t);
vf = fft(v);
vf = fftshift(vf);

figure; 
plot(abs(vf).^2);

im1 = ones(1,1)*v;

imf = fft2(im1);
imf = fftshift(imf);
figure;
imshow(abs(imf).^2/max(max(abs(imf).^2)))

for i = 1:N
    im1(i,:) = cos(2*t);
end


for i = 1:N
    im2(i,:) = cos(8*t);
end

im3 = im2';

for i = 1:N
    im4(i,:) = cos(8*(t-i/500*2*pi));
end

im1show = (im1-min(min(im1)))/(max(max(im1)-min(min(im1))));
figure;
imshow(im1show);

im2show = (im2-min(min(im2)))/(max(max(im2)-min(min(im2))));
figure;
imshow(im2show);

im3show = (im3-min(min(im3)))/(max(max(im3)-min(min(im3))));
figure;
imshow(im3show);

im4show = (im4-min(min(im4)))/(max(max(im4)-min(min(im4))));
figure;
imshow(im4show);

im5 = im1.*im4;

im5show = (im5-min(min(im5)))/(max(max(im5)-min(min(im5))));
figure;
imshow(im5show);