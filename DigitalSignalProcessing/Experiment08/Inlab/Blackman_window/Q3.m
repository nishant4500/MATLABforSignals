wp1 = 0.3;
wp2 = 0.6;
ws1 = 0.2;
ws2 = 0.7;
dels = 0.1;
Fs = 8000;
Wc1 = (wp1 + ws1) / 2;
Wc2 = (wp2 + ws2) / 2;
N = ceil(6.2*pi / (ws2 - ws1));
b_bandpass = fir1(N, [Wc1, Wc2], 'bandpass', blackman(N+1));
figure(3);
freqz(b_bandpass, 1, 512, Fs);
