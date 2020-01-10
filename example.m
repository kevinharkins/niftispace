clearvars

%% example data set to save as a nifti file
data.img = rand(100,100); % image data
data.text = 'meta data to be saved'; 
data.pars.te = 10:10:100; % numeric meta data

%% save data into a nifti file
f = niftifile('test.nii',data);

%% clear the workspace
clearvars

%% load any .nii files in the pwd

ns = niftispace();

% this should show a noisy image
figure(1)
imagesc(ns.test.img)
axis image

% and the stored data should be present
ns.test.pars.te


%% nifti files can also be created directly from niftispace

d.img = rand(100,100);
d.text = 'more meta data to be saved';

% this will be saved in test2.nii
ns.test2 = d;