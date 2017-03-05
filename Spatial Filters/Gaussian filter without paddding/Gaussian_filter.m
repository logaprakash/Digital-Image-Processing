A = imread('input.jpg');
[row,col] = size(A);
w = [1,2,1;2,4,2;1,2,1];
B = zeros(row,col);



for i=1 : row
    for j=1 : col
        if j==1 || i==1 || i== row || j==col 
            B(i,j) = A(i,j);         
        else
            B(i,j) = (A(i-1,j-1)* w(1,1) + A(i-1,j) * w(1,2) +  A(i,j+1) * w(1,3) + A(i,j-1) * w(2,1) + A(i,j)* w(2,2) + A(i,j+1)*w(2,3) +A(i+1,j-1) * w(3,1) + A(i+1,j)* w(3,2) + A(i+1,j+1)* w(3,3))/16;
        end
   end
end
imshow(A);
figure,imshow(B,[]);