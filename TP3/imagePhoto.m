im = imread('../img/animaltresmechant.jpg');
imshow(im);
im = double(rgb2gray(im))/255;
figure;
imshow (im);