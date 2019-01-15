function compshow(im)
    figure;
    subplot(2,2,1); imshowrange(im(:,:,1));
    subplot(2,2,2); imshowrange(im(:,:,2));
    subplot(2,2,3); imshowrange(im(:,:,3));
    drawnow();
end