function [vModel] = T1Model(PhoneModel, M)

% first approach:
modelLocation = (M(:, 1) == PhoneModel);
vModel = M(modelLocation, 2);

%second approach: 
vModel = [];
for n = 1:25
    if M(n,1) == PhoneModel
        vModel = [vModel; M(n,2)];
    end
end    

end