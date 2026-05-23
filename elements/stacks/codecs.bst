# Includes ffmpeg, gstreamer, intel-media-driver, and various stuff from codecs-extra and mesa-extra.
kind: stack

depends:
  - freedesktop-sdk.bst:components/ffmpeg.bst
  - freedesktop-sdk.bst:components/gstreamer.bst
  - freedesktop-sdk.bst:components/gstreamer-libav.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-rs.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-ugly.bst
  - freedesktop-sdk.bst:components/sdl3.bst
  - freedesktop-sdk.bst:extensions/codecs-extra/ffmpeg.bst
  - freedesktop-sdk.bst:extensions/codecs-extra/gstreamer-plugins-ugly-x264.bst
  - freedesktop-sdk.bst:extensions/codecs-extra/libheif.bst
  - freedesktop-sdk.bst:extensions/platform-vaapi-intel/intel-media-driver.bst
  - gnome-build-meta.bst:core/gst-thumbnailers.bst

