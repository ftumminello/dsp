function data = gammaCorrection(d, gamma)
    d = double(d);
    data = 255.*((d./255).^gamma);
    data = uint8(data);
end
