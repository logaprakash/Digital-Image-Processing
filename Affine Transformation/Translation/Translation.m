A = zeros(255);

Xo = 30;
Yo = 40;

Aff = [1,0,0;0,1,0;Xo,Yo,1];

for row = 10:170
    for col = 13:133
        A(row,col) = 1;
    end
end

K = zeros(255);

for row = 1:255
    for col = 1:255
        B = [row,col,1]*Aff;
        B = uint8(B);
        if B(1)<=255 && B(1)>0 && B(2)<=255 && B(2)>0
            K(B(1),B(2))= A(row,col);
        end
    end
end

imshow(A);
figure,imshow(K);

