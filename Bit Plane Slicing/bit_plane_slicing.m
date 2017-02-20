img = imread('input.jpg');
[row,col] = size(img);
A7 = zeros(row,col);
A6 = zeros(row,col);
A5 = zeros(row,col);
A4 = zeros(row,col);
A3 = zeros(row,col);
A2 = zeros(row,col);
A1 = zeros(row,col);
A0 = zeros(row,col);


for i=1:row
    for j=1:col
        K = img(i,j);
        if K >= 128
          A7(i,j) = 1;
          K = mod(K,128);
        end
        if K >= 64
           A6(i,j) = 1;
           K = mod(K,64);
        end
        if K >= 32
          A5(i,j) = 1;
          K = mod(K,32);
        end
        if K >= 16
           A4(i,j) = 1;
           K = mod(K,16);
        end
        if K >= 8
           A3(i,j) = 1;
           K = mod(K,8);
        end
        if  K>=4
           A2(i,j) = 1;
           K = mod(K,4);
        end
        if K >= 2
           A1(i,j) = 1;
           K = mod(K,2);
        end
        if K >= 1
           A0(i,j) = 1;
           K = mod(K,1);
        end       
    end
end

imshow(img);
figure,imshow(A7);
figure,imshow(A6);
figure,imshow(A5);
figure,imshow(A4);
figure,imshow(A3);
figure,imshow(A2);
figure,imshow(A1);
figure,imshow(A0);

