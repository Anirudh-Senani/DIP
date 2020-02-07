clc;
clear;
close all;

image = imread('C:\Users\ANIRUDH SENANI\Downloads\lenna.png');
image = rgb2gray(image);
imageO = imadjust(image,stretchlim(image,[0.15,0.985]));

subplot(2,2,1)
imshow(image)

subplot(2,2,2)
imshow(imageO)

subplot(2,2,3)
imhist(image)

subplot(2,2,4)
imhist(imageO)