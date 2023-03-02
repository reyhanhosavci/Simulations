r = 40; %radius
f=2;% frequency of the accelerating ball
fs=20;%frame per second
sim={};
for i=1:200
    A=zeros(200,200);
    m = {100,i}; %midpoint
    A(m{:})=1;
    B = bwdist(A) <= r;
    B=im2double(B);
    J = imtranslate(B,[0, sin(2*pi.*(f./fs).*i)],'FillValues',0);
    sim{i}=J;
    imshow(J)
end