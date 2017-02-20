A = imread('input.jpg');
[row,col] = size(A);
imshow(A);
Z = zeros(row,col);
m=0.2;
E=3;
A = im2double(A);

for row1 = 1:row
    for col1 = 1:col
        Z(row1,col1) = 1./(1+(m./(double(A(row1,col1))+eps)).^E);
    end
end

figure,imshow(Z);
