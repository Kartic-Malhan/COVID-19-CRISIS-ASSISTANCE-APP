A=imread('psoriasis.jpg');

figure;
subplot(1,2,1);imshow(A);
subplot(1,2,2);imhist(A);
imh=imadjust(A,[0.3,0.6],[0.0,1.0]);
imh1=histeq(A);
figure;
subplot(2,2,1);imshow(imh);title('streched');
subplot(2,2,2);imhist(imh);
subplot(2,2,3);imshow(imh1);title('hist eq');
subplot(1,2,2);imhist(imh1);
im=repmat(1:10,10,1);
h=image(im);
colormap(bone);
colorbar;
set(h,'cdatamapping','scaled')
set(gca,'climmode','manual')
set(gca,'Clim'    ,[2,7])

