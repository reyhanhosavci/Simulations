%% Vibrating white circle
A=zeros(128,128);% size of the video
r = 35; % radius of the circle
m = {64,64}; % midpoint of the circle
A(m{:})=1;
B = bwdist(A) <= r;
imshow(B) % checking the view
B=im2double(B);
f=5;% frequency of vibration
A1=0.5; % how many pixel you want move up-to-down or dont-to-up
fs=30;% number of frames per second
for i=1:180 % 180 frames = 6 seconds
    J = imtranslate(B,[0, A1.*sin(2*pi.*(f./fs).*i)],'FillValues',0);
    sim{i}=J;
    imshow(J);
end