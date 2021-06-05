% Question 1 part B
% We have the images ,we just have to show how they are different from the
% main one

clean_image = niftiinfo('../data/data/nii/clean_image.nii');
V_clean_image = niftiread(clean_image);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rf20_A_n3 = niftiinfo('../images/output_n3_rf20_A.nii');
V_rf20_A_n3 = niftiread(rf20_A_n3);
% imshow(V_rf20_A_n3(:,:,1));

rf20_B_n3 = niftiinfo('../images/output_n3_rf20_B.nii');
V_rf20_B_n3 = niftiread(rf20_B_n3);
% imshow(V_rf20_B_n3(:,:,1));

rf20_C_n3 = niftiinfo('../images/output_n3_rf20_C.nii');
V_rf20_C_n3 = niftiread(rf20_C_n3);
% imshow(V_rf20_A_n3(:,:,1));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rf20_A_n4 = niftiinfo('../images/output_n4_rf20_A.nii');
V_rf20_A_n4 = niftiread(rf20_A_n4);
% imshow(V_rf20_A_n3(:,:,1));

rf20_B_n4 = niftiinfo('../images/output_n4_rf20_B.nii');
V_rf20_B_n4 = niftiread(rf20_B_n4);
% imshow(V_rf20_B_n3(:,:,1));

rf20_C_n4 = niftiinfo('../images/output_n4_rf20_C.nii');
V_rf20_C_n4 = niftiread(rf20_C_n4);
% imshow(V_rf20_A_n3(:,:,1));



disp("Errors are as follows");

disp(sqrt(mean(mean(mean((V_rf20_A_n3 - V_clean_image).^2)))))
disp(sqrt(mean(mean(mean((V_rf20_B_n3 - V_clean_image).^2)))))
disp(sqrt(mean(mean(mean((V_rf20_C_n3 - V_clean_image).^2)))))

disp(sqrt(mean(mean(mean((V_rf20_A_n4 - V_clean_image).^2)))))
disp(sqrt(mean(mean(mean((V_rf20_B_n4 - V_clean_image).^2)))))
disp(sqrt(mean(mean(mean((V_rf20_C_n4 - V_clean_image).^2)))))

