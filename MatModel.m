function [A] = MatModel()

first_col = randi([1,7], 25, 1);
second_col = randi([101,110], 25, 1);

A = [first_col, second_col];
end