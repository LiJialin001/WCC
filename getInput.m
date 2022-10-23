function FinalInput = getInput()
% 获取输入并验证
FirstInput=input('输入算式：\n','s');
try
    MidInput = eval(FirstInput);
catch
    disp('Syntax Error !')
end
NextInput = dec2bin(MidInput);
FinalStrInput = reshape(NextInput',1,length(NextInput(:)));
FinalInput = str2num(FinalStrInput')';
end

