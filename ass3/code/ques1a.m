% read the nii images, and print them

input_n4 = niftiinfo('../data/data/nii/BF40.nii');
V = niftiread(output_n4);
imshow(V(:,:,1));

output_n4 = niftiinfo('.../images/outputn4.nii');
V_n4 = niftiread(output_n4);
imshow(V_n4(:,:,1));

output_n3 = niftiinfo('../images/outputn3.nii');
V_n3 = niftiread(output_n3);
imshow(V_n3(:,:,1));