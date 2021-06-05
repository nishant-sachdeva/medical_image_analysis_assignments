from scipy import misc
import numpy as np 
import matplotlib as plt 
import cv2


import skimage
from skimage import io

def radon_transform(image, step_size):
	r = np.zeros((step_size, len(image)), dtype='float64')

	for s in range(step_size):
		rotation = skimage.transform.rotate(image, -s*180/step_size).astype('float64')

		R[:, s] = sum(rotation)

	return R




image = io.imread("shepplogan.png" ).astype('float64')

print(image.shape)

radon_transform_image = radon_transform(image, 220)


plt.subplot(1, 2, 1), plt.imshow(image, cmap='gray')
plt.xticks([]), plt.yticks([])
plt.subplot(1, 2, 2), plt.imshow(radon, cmap='gray')
plt.xticks([]), plt.yticks([])
plt.show()