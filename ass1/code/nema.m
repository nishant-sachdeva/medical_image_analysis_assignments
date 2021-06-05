
 f_e=fopen('../Nema/nema.emission.sinogram');
 f_c=fopen('../Nema/nema.ctac.sinogram');
 
 e=fread(f_e,[293 280],'float','l');
 c=fread(f_c,[293 280],'float','l');
 Sino = e./c;
 
 figure,imshow(e,[]) 
 figure,imshow(c,[])
 figure,imshow(Sino,[])
 
%  figure.imsave(e, ".png") ;

%  so, here we are going to show the images

