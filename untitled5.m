clear; clc

[row, col] = MatDim();

total_ones = [];

for n = 1:10
    M = rand(row, col);
    threshold = input('please insert a value between 0.3-0.7: ');

    while threshold < 0.3 || threshold > 0.7 || ~isnumeric(threshold) || abs(threshold) ~= threshold
            threshold = input('please insert a value between 0.3-0.7: ');
    end

    M_new = MatCut(M, threshold);
    frame = 5*ones(row+2, col+2);
    frame(2:end-1, 2:end-1) = M_new;
    one_values = sum(frame == 1);
    total_ones = [total_ones; one_values];
end    

minValue = fprintf('in the %g image, we had %g ones', 1, sum(total_ones(1,:)))
for m = 2:10
    if minValue < sum(total_ones(m,:))
        minValue = sum(total_ones(m,:));
    end
    fprintf('in the %g image, we had %g ones', m, sum(total_ones(m,:)))
end

% one way to find the minimum:
 minValue = min(sum(total_ones'));

fprintf('the minimal value of ones is %g', minValue);