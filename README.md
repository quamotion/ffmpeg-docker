This repository contains the sources for an Ubuntu-based Docker container which runs FFmpeg.

You can use it in combination with the Quamotion WebDriver to create video recordings of iOS and Android devices, like this:

```
 docker run --net host \
   quay.io/quamotion/ffmpeg:latest \
   ffmpeg -use_wallclock_as_timestamps 1 \
   -f mjpeg -i http://localhost:17894/wd/hub/quamotion/device/$DEVICE_ID/screenshotFeed \
   -an -c:v libx264 -crf 23 file.mp4
```
