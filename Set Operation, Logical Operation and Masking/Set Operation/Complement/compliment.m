a=zeros(255);
row1 = 30;
row2 = 160;
col1 = 20;
col2 = 180;

for row=row1:row2
    for col=col1:col2
        a(row,col)=255;
    end
end

imshow(a);
b=~a;
figure,imshow(b);
