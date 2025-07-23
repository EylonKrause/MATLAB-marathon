clear; clc

M = MatModel();
total_Mat = [];
for n = 1:5
    model = input('please insert a fixed value 1-7: ');
    
    if model == 0 
        total_Mat = [total_Mat; zeros(1,2)];
    else
        while model < 1 || model > 7 || ~isnumeric(model) || abs(model) ~= model || floor(model) ~= model
        
            model = input('please insert a fixed value 1-7: ');
        
        end

    disp(T1Model(model, M))
    if isempty(T1Model(model, M))
        disp('the model does not exist in the list');
    end    
    
    vModel = T1Model(model, M);
    total_Mat = [total_Mat; [model*ones(length(vModel),1), vModel]];

    end    
end    

sum101 = sum(total_Mat(:,2) == 101);
sum107 = sum(total_Mat(:,2) == 107);

fprintf('the amount of 101 model phones are %g', sum101)
fprintf('the amount of 107 model phones are %g', sum107)

x = unique(total_Mat(:,1));
y = [];
for m = 1:length(x)
    y = [y, sum(total_Mat(:,1) == x(1,m))];
end    

plot(x,y, 'r', LineStyle='-*');
title('this is amount of phones as a function of phone model');
xlabel('phone model');
ylabel('amount of phones');