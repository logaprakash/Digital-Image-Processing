A = imread('input.jpg');
imshow(A);

[row,col] = size(A);

Z = zeros(row,col);

A = im2double(A);
for row1 = 1:row
    for col1 = 1:col
        Z(row1,col1)=sqrt(A(row1,col1));
    end
end

figure,imshow(Z);
