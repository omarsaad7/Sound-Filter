load handel
sound(y,Fs)
Ts=1/Fs;
N=length(y);
t=0:Ts:(N-1)*Ts;
subplot(2,1,1);
plot(t,y);
[fk,x]=fft_signals_project(Fs,y);
subplot(2,1,2);
plot(fk,x);

load handel_mix
figure(2)

Ts=1/Fs;
N=length(y_m);
t=0:Ts:(N-1)*Ts;
subplot(3,1,1);
plot(t,y_m);
[fk,x]=fft_signals_project(Fs,y_m);
subplot(3,1,2);
plot(fk,x);


y_filtered=filter(Hd,y_m);
[fk,x]=fft_signals_project(Fs,y_filtered);
subplot(3,1,3);
plot(fk,x);
sound(y_filtered,Fs)