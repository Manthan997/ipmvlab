clc;
clear;
f=imread('Img_3.tif');

L1=min(min(f))
U1=max(max(f))

F=abs(fft2(f));

L2=min(min(F))
U2=max(max(F))

figure(1),imshow(uint8(f))
figure(2),imagesc(fftshift(F))
figure(3),imagesc(fftshift(log(1+F)))
