img=imread('C:\Users\abc\Desktop\ip\scene1.jpg');
img1=rgb2gray(img);
img2=imnoise(img1,'gaussian');
img3=double(img2);
w=[1 1 1;1 1 1;1 1 1]/9;
[row col]=size(img3);
hpf = [0 -0.25 0; -0.25 4 -0.25; 0 -0.25 0];
for x=2:1:row-1
  for y=2:1:col-1
    img4(x,y)=w(1)*img3(x-1,y-1)+w(2)*img3(x-1,y)+w(3)*img3(x-1,y+1)+w(4)*img3(x,y-1)+w(5)*img3(x,y)+w(6)*img3(x,y+1)+w(7)*img3(x+1,y-1)+w(8)*img3(x+1,y)+w(9)*img3(x+1,y+1);
  endfor
endfor
figure(1);imshow(uint8(img3));
figure(2);imshow(uint8(img4));