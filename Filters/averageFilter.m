A = [11,1,3,5,3,17,17;
    12,16,18,19,20,18,18;
    12,24,23,21,9,16,17;
    5,4,2,1,21,12,14;
    12,16,18,19,20,1,23;
    3,23,24,21,16,12,13;
    12,10,23,21,20,14,12];

w = [1,1,1;1,1,1;1,1,1];
B = zeros(7,7);

[row,col] = size(A);

for i=1 : row
    for j=1 : col
        if j==1 || i==1 || i== row || j==col
            B(i,j) = A(i,j);
         
        else
            B(i,j) = (A(i-1,j-1)* w(1,1) + A(i-1,j) * w(1,2) +  A(i,j+1) * w(1,3) + A(i,j-1) * w(2,1) + A(i,j)* w(2,2) + A(i,j+1)*w(2,3) +A(i+1,j-1) * w(3,1) + A(i+1,j)* w(3,2) + A(i+1,j+1)* w(3,3))/9;
        end
   end
end
B=int8(B);

disp(A);
disp(B);