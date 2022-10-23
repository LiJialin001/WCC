function Voice = ReceiveSoundWaves(Fs,nBits,length)
% 接收声波

voicing_receive = audiorecorder(Fs,nBits,1);
recordblocking(voicing_receive, length);
Voice = getaudiodata(voicing_receive);

end

