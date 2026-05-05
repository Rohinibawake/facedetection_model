# Import libraries
import cv2
import os
import yaml
from ultralytics import YOLO

# Load train model on custom data
model = YOLO('best.pt')

# model inference 
results = model.predict(source='rtsp://<username>:<password>@<ipaddress>:554/cam/realmonitor?channel=1&subtype=0&unicast=true&proto=Onvif',show=True)
for result in results:
    print(result)

