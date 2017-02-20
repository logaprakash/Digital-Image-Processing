A = imread('input.jpg');
[row,col] = size(A);
imshow(A);
imwrite(A,'Input.jpg');
Z = zeros(row,col);

A = double(A);
for row1 = 1:row
    for col1 = 1:col
        Z(row1,col1)=1/(log10(1+A(row1,col1)));
    end
end

figure,imshow(Z);
