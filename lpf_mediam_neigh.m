clc;
clear;
## f = [   3 3 3 3 3 3 3 3 ; ...
##         3 3 255 255 3 3 3 3 ; ...
##         3 3 3 3 255 3 3 3 ; ...
##         3 3 3 3 3 3 3 3 ; ...
##         201 201 201 201 201 201 201 201 ; ...
##         201 0 0 201 201 201 201 201 ; ...
##         201 0 201 201 201 201 201 201 ; ...
##         201 201 201 201 201 201 201 201 ]

f1 = uint8(imread('Img_3.tif'));

f = imnoise(f1, 'salt & pepper');

[ row, col] = size(f)



for x= 2:1:row-1
  for y= 2:1:col-1
    temp1 = [f(x-1,y-1)   f(x-1,y)   f(x-1,y+1)  ...
             f(x,y-1)     f(x,y)     f(x,y+1) ...
             f(x+1,y-1)   f(x+1,y)   f(x+1,y+1);];
     temp2 = sort(temp1);
     g(x,y)= temp2(5);
  endfor
endfor



figure(1)
imshow(uint8(f)),title('noisy')
figure(2)
imshow(uint8(g)),title('Mediam applied')
figure(3)
imshow(uint8(f1)),title('Original Image')
