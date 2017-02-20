A = zeros(250,250);

% K - Threshold Value  
row1 = 70 ;
row2 = 130 ;
column1 = 60;
column2 = 170;



for i = row1:row2
    for j = column1:column2
        A (i,j) = 1;
    end
end  
imshow(A)


