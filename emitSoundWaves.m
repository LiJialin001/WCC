function emitSoundWaves(Msg)
% 发送声波
% 包含识别部分和信息部分

dt=1.2500e-004;
t=dt:dt:400*dt;
SIN1 = sin(2*pi*1000*t);

head=[SIN1,SIN1,SIN1,SIN1,SIN1,SIN1,SIN1,SIN1,SIN1];
sound(head,20000);
disp('呼叫中…')
pause(2);

sound(Msg,8000);
disp('发送中…');

end

