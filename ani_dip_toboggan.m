clc;
clear;
close all;

grad_mat = [12,14,23,13;16,11,21,18;21,24,23,12;12,21,20,10];
image = [4,4,3,2;3,7,6,1;2,7,6,2;0,1,0,2];
n1 = size(image);
inew = zeros(n1);
n = n1(1);
disp(grad_mat);
disp(image);
disp(inew);

for i=1:1:n
for j=1:1:n
least=grad_mat(i,j);  
x=i;
y=j;
if(i+1<=n&&grad_mat(i+1,j)<least)
least=grad_mat(i+1,j);
x=i+1;
y=j;
end
if(i-1>=n&&grad_mat(i-1,j)<least)
least=grad_mat(i-1,j);
x=i-1;
y=j;
end
if(j-1>=n&&grad_mat(i,j-1)<least)
least=grad_mat(i,j-1);
y=j-1;
x=i;
end
if(j+1<=n&&grad_mat(i,j+1)<least)
least=gradient(i,j+1);
y=j+1;
x=i;
end
if(j+1<=n&&i+1<=n&&grad_mat(i+1,j+1)<least)
least=grad_mat(i+1,j+1);
y=j+1;
x=i+1;
end
if(j-1>=1&&i+1<=n && grad_mat(i+1,j-1)<least)
least=grad_mat(i+1,j-1);
y=j-1;
x=i+1;
end
if(j+1<=n&&i-1>=1 && grad_mat(i-1,j+1)<least)
least=grad_mat(i-1,j+1);
y=j+1;
x=i-1;
end

inew(i,j)=image(x,y);
end
end
disp(inew);