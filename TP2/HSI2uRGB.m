function uRGB = HSI2uRGB(HSI)   
    H = HSI(:,:,1);
    S = HSI(:,:,2);
    I = HSI(:,:,3);
    
    x = S .* cos(H);
    y = S .* sin(H);
    
    uR = I + (3/2)*x;
    uG = I - (1/3)*x + (1/sqrt(3))*y;
    uB = I - (1/3)*x - (1/sqrt(3))*y;
    
    uRGB(:,:,1) = uR;
    uRGB(:,:,2) = uG;
    uRGB(:,:,3) = uB;
    
    imshow(uRGB);
    drawnow;
end