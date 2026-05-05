# Face detection model
A deep learning-based face detection model trained on a custom dataset. This model is capable of identifying and bounding human faces in images and real-time video streams.

### How to run?
clone this repo:
```https://github.com/Rohinibawake/facedetection_model.git```

Navigate to the project folder:
```cd facedetection/```

Build docker image :
```docker build -t fdimage .```

Run command:
``` xhost + ```

Run docker container:
```docker run -it --rm   --env DISPLAY=$DISPLAY   --env WAYLAND_DISPLAY=$WAYLAND_DISPLAY   --env XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR   --env PULSE_SERVER=$PULSE_SERVER   -v /tmp/.X11-unix:/tmp/.X11-unix fdimage ```

 

