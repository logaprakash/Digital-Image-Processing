A = imread('input.jpg');
[row,col] = size(A);
imshow(A);

K = 70;

for row1 = 1:row
    for col1 = 1:col
        A(row1,col1) = A(row1,col1)+ 70;
    end
end

A_int = uint8(A);
figure,imshow(A_int);
