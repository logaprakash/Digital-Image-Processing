

filter = 'average';
size_matrix = 3;


matrix = [10,2,5,6,7,3,2;
          4,6,8,4,0,2,2;
          13,23,2,20,1,18,5;
          16,4,6,16,5,1,7;
          23,22,17,0,12,17,5;
          24,25,14,17,18,19,24;
          25,13,12,11,18,19,21];
 
Z = zeros(7);

win_gaussian3 = [1,2,1;
                2,4,2;
                1,2,1];
            
win_avg3 = ones(3);

win_gaussian5 = [0,0,1,0,0;
                 0,1,2,1,0;
                 1,2,16,2,1;
                 0,1,2,1,0;
                 0,0,1,0,0]; 
             
win_avg5 = ones(5);    


if ((strcmp(filter,'Gaussian')||strcmp(filter,'gaussian')) && (size_matrix==3))
    for row = 1:7
        for col = 1:7 
            if row==1||col==1||row==7||col==7
                Z(row,col) = matrix(row,col);
            else
                Z(row,col) = (matrix(row-1,col-1)*win_gaussian3(1,1)+ matrix(row-1,col)*win_gaussian3(1,2) + matrix(row-1,col+1)*win_gaussian3(1,3) + matrix(row,col-1)*win_gaussian3(2,1) + matrix(row,col)*win_gaussian3(2,2) + matrix(row,col+1)*win_gaussian3(2,3) + matrix(row+1,col-1)*win_gaussian3(3,1)+ matrix(row+1,col)*win_gaussian3(3,2)+ matrix(row+1,col+1)*win_gaussian3(3,3))/16;  
            end
        end
    end 
Z = int8(Z);
disp(Z);

elseif ((strcmp(filter,'Gaussian')||strcmp(filter,'gaussian')) && (size_matrix==5))
    for row = 1:7
        for col = 1:7 
            if row==1||col==1||row==7||col==7||row==2||col==2||row==6||col==6
                Z(row,col) = matrix(row,col);
            else
                Z(row,col) = (matrix(row-2,col-2)*win_gaussian5(1,1)+ matrix(row-2,col-1)*win_gaussian5(1,2) + matrix(row-2,col)*win_gaussian5(1,3) + matrix(row-2,col+1)*win_gaussian5(1,4) + matrix(row-2,col+2)*win_gaussian5(1,5) + matrix(row-1,col-2)*win_gaussian5(2,1) + matrix(row-1,col-1)*win_gaussian5(2,2)+ matrix(row-1,col)*win_gaussian5(2,3)+ matrix(row-1,col+1)*win_gaussian5(2,4)+ matrix(row-1,col+2)*win_gaussian5(2,5)+ matrix(row,col-2)*win_gaussian5(3,1)+ matrix(row,col-1)*win_gaussian5(3,2)+ matrix(row,col)*win_gaussian5(3,3)+ matrix(row,col+1)*win_gaussian5(3,4)+ matrix(row,col+2)*win_gaussian5(3,5)+ matrix(row+1,col-2)*win_gaussian5(4,1)+ matrix(row+1,col-1)*win_gaussian5(4,2)+ matrix(row+1,col)*win_gaussian5(4,3)+ matrix(row+1,col+1)*win_gaussian5(4,4)+ matrix(row+1,col+2)*win_gaussian5(4,5)+ matrix(row+2,col-2)*win_gaussian5(5,1)+ matrix(row+2,col-1)*win_gaussian5(5,2)+ matrix(row+2,col)*win_gaussian5(5,3)+ matrix(row+2,col+1)*win_gaussian5(5,4)+ matrix(row+2,col+2)*win_gaussian5(5,5))/32;  
            end
        end
    end 
Z = int8(Z);
disp(Z);


elseif ((strcmp(filter,'Average')||strcmp(filter,'average')) && (size_matrix==3))   
    for row = 1:7
        for col = 1:7 
            if row==1||col==1||row==7||col==7
                Z(row,col) = matrix(row,col);
            else
                Z(row,col) = (matrix(row-1,col-1)*win_avg3(1,1)+ matrix(row-1,col)*win_avg3(1,2) + matrix(row-1,col+1)*win_avg3(1,3) + matrix(row,col-1)*win_avg3(2,1) + matrix(row,col)*win_avg3(2,2) + matrix(row,col+1)*win_avg3(2,3) + matrix(row+1,col-1)*win_avg3(3,1)+ matrix(row+1,col)*win_avg3(3,2)+ matrix(row+1,col+1)*win_avg3(3,3))/9;  
            end
        end
    end

Z = int8(Z);
disp(Z);

elseif ((strcmp(filter,'Average')||strcmp(filter,'average')) && (size_matrix==5))
    for row = 1:7
        for col = 1:7 
            if row==1||col==1||row==7||col==7||row==2||col==2||row==6||col==6
                Z(row,col) = matrix(row,col);
            else
                Z(row,col) = (matrix(row-2,col-2)*win_avg5(1,1)+ matrix(row-2,col-1)*win_avg5(1,2) + matrix(row-2,col)*win_avg5(1,3) + matrix(row-2,col+1)*win_avg5(1,4) + matrix(row-2,col+2)*win_avg5(1,5) + matrix(row-1,col-2)*win_avg5(2,1) + matrix(row-1,col-1)*win_avg5(2,2)+ matrix(row-1,col)*win_avg5(2,3)+ matrix(row-1,col+1)*win_avg5(2,4)+ matrix(row-1,col+2)*win_avg5(2,5)+ matrix(row,col-2)*win_avg5(3,1)+ matrix(row,col-1)*win_avg5(3,2)+ matrix(row,col)*win_avg5(3,3)+ matrix(row,col+1)*win_avg5(3,4)+ matrix(row,col+2)*win_avg5(3,5)+ matrix(row+1,col-2)*win_avg5(4,1)+ matrix(row+1,col-1)*win_avg5(4,2)+ matrix(row+1,col)*win_avg5(4,3)+ matrix(row+1,col+1)*win_avg5(4,4)+ matrix(row+1,col+2)*win_avg5(4,5)+ matrix(row+2,col-2)*win_avg5(5,1)+ matrix(row+2,col-1)*win_avg5(5,2)+ matrix(row+2,col)*win_avg5(5,3)+ matrix(row+2,col+1)*win_avg5(5,4)+ matrix(row+2,col+2)*win_avg5(5,5))/25;  
            end
        end
    end 
Z = int8(Z);
disp(Z);

end;
