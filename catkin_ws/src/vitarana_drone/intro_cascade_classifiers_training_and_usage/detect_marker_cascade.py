import cv2
from matplotlib import pyplot as plt

logo_cascade = cv2.CascadeClassifier('data/cascade.xml')

img = cv2.imread('test_2.png')  # Source image
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# image, reject levels level weights.
logo = logo_cascade.detectMultiScale(gray, scaleFactor=1.05)

for (x, y, w, h) in logo:
    cv2.rectangle(img, (x, y), (x + w, y + h), (255, 255, 0), 2)
plt.imshow(cv2.cvtColor(img, cv2.COLOR_BGR2RGB))
plt.show()
