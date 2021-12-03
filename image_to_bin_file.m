
clear all;
close all;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

data = imread('w1.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
iq = data / max( abs(data));
iq = [ iq];


data = imread('w2.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];


data = imread('w3.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];


data = imread('w4.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];


data = imread('w5.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];


data = imread('w6.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];


data = imread('w7.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];



data = imread('w8.jpg');
data = rgb2gray(data);
data = data(end:-1:1,:);
data = double(data);
data = fftshift(data,2);
data = ifft(data,[],2);
data = ifftshift(data,2);
data = reshape(data.',1,[]);
data = data / max( abs(data));
iq = [iq data];





fs = 48e3;

%  make the .dat file  float32 of IQIQIQIQIQ...
datafile = [ real(iq) ; imag(iq) ];

datafile = reshape(datafile, 1, []);

[filename pathname ] = uiputfile( 'GnuRadio.bin', 'Save Bin File To:  ');

fid = fopen ([pathname filename], 'w', 'l');

fwrite(fid, datafile, 'float32');

fclose (fid);







