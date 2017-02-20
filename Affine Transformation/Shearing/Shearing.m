A = zeros(255);

Xo = 20;
Yo = 20;

Aff1 = [1,0,0;0,1,0;Xo,0,1];
Aff2 = [1,0,0;0,1,0;0,Yo,1];

for row = 10:170
    for col = 13:133
        A(row,col) = 1;
    end
end


K = zeros(255);
J = zeros(255);

for row = 1:255
    for col = 1:255
        B = [row,col,1]*Aff1;
        C = [row,col,1]*Aff2;
        B = uint8(B);
        C = uint8(C);
        if B(1)<=255 && B(1)>0 && B(2)<=255 && B(2)>0
            K(B(1),B(2))= A(row,col);
        end
        if C(1)<=255 && C(1)>0 && C(2)<=255 && C(2)>0
            J(C(1),C(2))= A(row,col);
        end
    end
end

imshow(A);
figure,imshow(K);
figure,imshow(J);
