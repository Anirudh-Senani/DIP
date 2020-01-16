clc;
close all;
clear all;

image = imread('C:\Users\ANIRUDH SENANI\Downloads\histeq.jpg');

image1 = histeq(image);
figure(1)
subplot(2,2,1)
imshow(image)
title('Before Equalization')
subplot(2,2,3)
histogram(image)

subplot(2,2,2)
imshow(image1)
title('After Equalization')
subplot(2,2,4)
histogram(image1)