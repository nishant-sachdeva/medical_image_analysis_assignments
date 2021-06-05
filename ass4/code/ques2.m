% load all the NII files you have at the moment, and find the PSNR error
% and the MSE Errors. Rest we shall see later

% all the NII images ( ANLM , ONLM have been generated )

addpath(genpath("../"));

V31 = niftiread('3.nii');
V32 = niftiread('3_ANLM.nii');
V33 = niftiread('3_ONLM.nii');

V51 = niftiread('5.nii');
V52 = niftiread('5_ANLM.nii');
V53 = niftiread('5_ONLM.nii');

V91 = niftiread('9.nii');
V92 = niftiread('9_ANLM.nii');
V93 = niftiread('9_ONLM.nii');


% V34 = imnlmfilt(V31(:,:,1));
% V54 = imnlmfilt(V51(:,:,1));
% V94 = imnlmfilt(V91(:,:,1));
% I have taken the answer for

list_of_names = [3,5,9];
[length , breadth, channels] = size(V31);
V34 = [];

for i = 1:channels
    V34 = cat(3, V34, imnlmfilt(V31(:,:,i)));
end



V54 = [];

for i = 1:channels
    V54 = cat(3, V54, imnlmfilt(V51(:,:,i)));
end


V94 = [];

for i = 1:channels
    V94 = cat(3, V94, imnlmfilt(V91(:,:,i)));
end

% Okay, so all the things are ready. We are now going to find the errrs


Error_3_psnr = [psnr(V32, V31), psnr(V33, V31) , psnr(V34, V31)];
Error_5_psnr = [psnr(V52, V51), psnr(V53, V51) , psnr(V54, V51)];
Error_9_psnr = [psnr(V92, V91), psnr(V93, V91) , psnr(V94, V91)];

Error_3_mse = [immse(V32, V31), immse(V33, V31) , immse(V34, V31)];
Error_5_mse = [immse(V52, V51), immse(V53, V51) , immse(V54, V51)];
Error_9_mse = [immse(V92, V91), immse(V93, V91) , immse(V94, V91)];

disp("PSNR ERRORS");
disp(Error_3_psnr);
disp(Error_5_psnr);
disp(Error_9_psnr);

disp("MSE ERRORS");
disp(Error_3_mse);
disp(Error_5_mse);
disp(Error_9_mse);


