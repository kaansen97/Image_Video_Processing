thet = pi/4;
C = angled_gaussian(thet,16,0.001);

im_graz = imread("graz.png");
im_graz = double(im_graz)./255;

im_graz = conv2(im_graz(:,:,1),C);

imshow(im_graz);

function ker = angled_gaussian(angle, sig_x, sig_y)
    ker = ones(5,5);
    for x = -5:5
        for y= -5:5
            x_theta = x*cos(angle) - y*sin(angle);
            y_theta = y*cos(angle) + x*sin(angle);
            ker(x+6,y+6) = exp(-((x_theta^2)/(2*sig_x)+(y_theta^2)/(2*sig_y)));
        end
    end
    tot = sum(sum(ker));
    ker = ker./tot;
end