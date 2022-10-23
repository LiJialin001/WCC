function Msg = modulationMsg(inputCodeArray, type)
% 调制已编码信息
% 默认2进制

if nargin<2
    type = "fsk";
end

Msg = zeros( 1,length(inputCodeArray)*400);

% 载波
dt=1.2500e-004;
t=dt:dt:400*dt;
SIN1 = sin(2*pi*1000*t);
SIN2 = sin(2*pi*500*t);

if type == "fsk"
    for ii = 1:length(inputCodeArray)
        if(inputCodeArray(ii) == '1')
            Msg(1+400*(ii-1):400*ii) = 10*SIN1;
        else
            Msg(1+400*(ii-1):400*ii) = 10*SIN2;
        end
    end
elseif type == "dpsk"
    Msg(1:400) = 10*SIN1;
    for ii = 2:(length(inputCodeArray)+1)
        if(real(inputCodeArray(ii-1)) == 1)
            Msg(1+400*(ii-1):400*ii) = 10*SIN1;
        else
            Msg(1+400*(ii-1):400*ii) = -10*SIN1;   % 倒pi
        end
    end
    
else
    error(message('MATLAB:modulationMsg:InvalidTypeArg'));
end

end

