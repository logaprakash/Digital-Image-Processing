a=zeros(255);
b=zeros(255);

row_a1 = 20;
row_a2 = 180;
col_a1 = 45;
col_a2 = 180;
for row=row_a1:row_a2
    for col=col_a1:col_a2
        a(row,col)=255;
    end
end
imshow(a);

row_b1 = 120;
row_b2 = 200;
col_b1 = 140;
col_b2 = 170;
for row=row_b1:row_b2
    for col=col_b1:col_b2
        b(row,col)=255;
    end
end

figure,imshow(b);
diff=a-b;

figure,imshow(diff);