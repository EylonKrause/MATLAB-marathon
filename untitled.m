u = [8.2 , 24.6, -16.4, 6];
% 
% [a,b] = size(u);
% 
% 
% for n = 1:b
%     % disp(n)
%     u(1,n) = n.*u(1,n);
% end    
% 
% disp(u)

flag = 1
n = 1

while flag

    if u(1,n) == -16.4
        flag = 0
    end
    
    u(1,n)
    n = n + 1
end    