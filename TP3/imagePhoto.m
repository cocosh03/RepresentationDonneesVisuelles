im = imread('../img/animaltresmechant.jpg');
imshow(im);
im = double(rgb2gray(im))/255;
figure;
imshow (im);

imf = fft2(im);
imf = fftshift(imf);

t = linspace(0, 2*pi, 1000);
h = size(im,1);
w = size(im,2);
BW = poly2mask(10*cos(t)+w/2, 10*sin(t)+h/2, h , w);

imf_lf = imf.*BW; %ou 1-BW pour les basse fréquences.
imf_lf = fftshift(imf_lf);
im = ifft2(imf_lf);