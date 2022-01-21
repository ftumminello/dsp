function data = highBoost(d, alpha)
    % Convert original image data to doubles for matrix operations
    origDouble = double(d);

    % Define Laplacian Filter
    filter = [0, -0.25, 0; -0.25, 1, -0.25; 0, -0.25, 0];

    % Convolve the filter with originial image data
    gxy = conv2(origDouble, filter, 'same');

    % Multiply the gxy image by scalar alpha and add to origianl then
    % convert to 8bit color values
    data = uint8((gxy.*alpha) + origDouble);
       
end