C = imread('input.jpg');
[row,col] = size(C);
A = zeros(row+4,col+4);
w = [1,2,1;2,4,2;1,2,1];
[wrow,wcol] = size(w);

for i = 1 + wrow : row + wrow
    for j=1 + wcol : col + wcol
        A(i,j) = C(i-wrow,j-wcol);
    end
end



B = zeros(row,col);



for i=1 : row
    for j=1 : col
        if j==1 || i==1 || i== row || j==col || j==2 || i==2 || i== row-1 || j==col-1
            B(i,j) = A(i,j);         
        else
            B(i,j) = (A(i-1,j-1)* w(1,1) + A(i-1,j) * w(1,2) +  A(i,j+1) * w(1,3) + A(i,j-1) * w(2,1) + A(i,j)* w(2,2) + A(i,j+1)*w(2,3) +A(i+1,j-1) * w(3,1) + A(i+1,j)* w(3,2) + A(i+1,j+1)* w(3,3))/16;
        end
   end
end

[row,col] = size(B);
D = zeros(row-4,col-4);
for i = 3 : row-2
    for j=3: col-2
        D(i-2,j-2) = B(i,j);
    end
end

imshow(C);
figure,imshow(D,[]);