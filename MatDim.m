function [return_row, return_col] = MatDim()

row = input('please insert the row value for the matrix: ');
col = input('please insert the col value for the matrix: ');

while row < 4 || row > 10 ||...
        col < 3 || col > 6 ||...
        floor(row) ~= row || floor(col) ~= col ||...
        ~isnumeric(row) || ~isnumeric(col) || abs(row) ~= row || abs(col) ~= col 

    if row < 4 || row > 10
        disp('row is not in the range 4-10')
    end  

    if col < 3 || col > 6
        disp('col is not in the range 3-6')
    end  

    if ~isnumeric(row)
           disp('row is not numeric')
    end    

    if ~isnumeric(col)
           disp('col is not numeric')
    end

row = input('please insert the row value for the matrix: ');
col = input('please insert the col value for the matrix: ');
end


return_row = row; 
return_col = col; 

end

