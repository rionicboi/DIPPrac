function applyFilters(imagePath, filterType)
    img = imread(imagePath);

    if size(img, 3) == 3
        img = rgb2gray(img);
    end

    img = double(img) / 255;

    switch filterType
        case 'lowpass'
            filter = ones(3, 3) / 9; 
        case 'highpass'
            filter = [-1 -1 -1; -1 8 -1; -1 -1 -1]; 
        otherwise
            error('Invalid filter type. Supported types: lowpass, highpass');
    end

    filteredImage = conv2(img, filter, 'same');

    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');

    subplot(1, 2, 2);
    imshow(filteredImage);
    title(['Filtered Image ('filterType 'Filter)']);
endfunction
figure;
applyFilters('C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg', 'highpass');
figure;
applyFilters('C:\CompSci\Sem 5\DIP\Programs\wallp1.jpg', 'lowpass');
