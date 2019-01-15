function recolorate(HSI)
    sRGB = imread('/opt/lexa5u/Espace-Etudiant/RepresentationDonneesVisuelles/img/shadows.jpg');
    figure; imshow(sRGB); drawnow;
    [x,y] = ginput(1);
    hue = HSI(round(y), round(x), 1);
    H = HSI(:,:,1);
    I = find(abs(H-hue) < pi/5);
    H(I) = pi/2;
    HSI(:,:,1) = H;
    uRGB = HSI2uRGB(HSI);
    imshow(uRGB);
    drawnow;
end