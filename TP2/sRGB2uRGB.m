function uRGB = sRGB2uRGB(sRGB)
    sRGB = imread('/opt/lexa5u/Espace-Etudiant/RepresentationDonneesVisuelles/img/shadows.jpg');
    figure;
    imshow(sRGB);
    drawnow; 
    uRGB(:,:,:) = double(sRGB(:,:,:))/255;
end