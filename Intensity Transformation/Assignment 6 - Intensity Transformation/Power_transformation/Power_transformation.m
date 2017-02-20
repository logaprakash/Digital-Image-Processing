A = imread('input.jpg');

[row,col] = size(A);
imshow(A);


Z1 = zeros(row,col);
Z2 = zeros(row,col);

A = im2double(A);
const = 2;

g1 = 0.3;
g2 = 2;

for row1 = 1:row
    for col1 = 1:col
        Z1(row1,col1)=const*(A(row1,col1)^g1);
        Z2(row1,col1)=const*(A(row1,col1)^g2);
    end
end

figure,imshow(Z1);
figure,imshow(Z2);
