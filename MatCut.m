function [filtered_M] = MatCut(M, threshold)

%% First approach: 
% [row, col] = size(M);
% 
% for n = 1:row
%     for m = 1:col
%         if M(n,m) >= threshold
%             M(n,m) = 1;
%         else
%             M(n,m) = 0;
%         end
%     end
% end    

%% Second approach: 

M = M >= threshold;
filtered_M = M;

end