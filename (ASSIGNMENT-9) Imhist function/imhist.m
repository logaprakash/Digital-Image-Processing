A = imread('input.jpg');
C = zeros(256,1);
[row,col] = size(A);

for i = 1 : row
    for j=1 : col
        value = A(i,j);
        C(value+1,1)= C(value+1,1) + 1;
    end
end

bar(C);
xlabel('Intensity', 'fontsize', 12);
ylabel('Number of Pixel', 'fontsize', 12);

title('HISTOGRAM');

