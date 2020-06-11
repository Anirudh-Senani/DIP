clc;
clear ;
close all;
I = imread('C:\Users\ANIRUDH SENANI\Downloads\lenna.png');
I1 = rgb2gray(I);
subplot(1,2,1)

imshow(I1);
[a,b] = size(I);
II = zeros(a,b,8);
for ii=1:a
    for  jj = 1:b
        II(ii,jj,:) = fliplr(de2bi(I(ii,jj),8));
    end
end
 
subplot(1,2,2)

I2 = II(:,:,1);

subplot(3,3,3)

I3 = II(:,:,2);
imshow(I3)

subplot(3,3,4)

I4 = II(:,:,3);
imshow(I4)

subplot(3,3,5)

I5 = II(:,:,4);
imshow(I5)

subplot(3,3,6)

I6 = II(:,:,5);
imshow(I6)

subplot(3,3,7)

I7 = II(:,:,6);
imshow(I7)

subplot(3,3,8)

I8 = II(:,:,7);
imshow(I8)

subplot(3,3,9)

I9 = II(:,:,8);
imshow(I9)
