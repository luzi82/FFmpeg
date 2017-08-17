FFmpeg-iOS capture README
=========================

This ffmpeg mod is made to capture iOS screen video via USA via AV Foundation.
This mod contains bad hack so it may break other original ffmpeg function.
Use it on you own risk.

## Build

Use mmake.sh to build.

## List iOS devices

`./ffmpeg -f avfoundation -list_devices true -i ""`

## Stream iOS screen to ffplay

Assume device name is DEVICE_NAME, scale video size to 120x213.  Download ffplay from ffmpeg official site.

`./ffmpeg -f avfoundation -pixel_format uyvy422 -i "DEVICE_NAME:none" -vsync 2 -an -vf scale=120:213 -pix_fmt bgr0 -f rawvideo - | ~/bin/ffplay -f rawvideo -framerate 100 -pixel_format bgr0 -video_size 120x213 -`

FFmpeg README
=============

FFmpeg is a collection of libraries and tools to process multimedia content
such as audio, video, subtitles and related metadata.

## Libraries

* `libavcodec` provides implementation of a wider range of codecs.
* `libavformat` implements streaming protocols, container formats and basic I/O access.
* `libavutil` includes hashers, decompressors and miscellaneous utility functions.
* `libavfilter` provides a mean to alter decoded Audio and Video through chain of filters.
* `libavdevice` provides an abstraction to access capture and playback devices.
* `libswresample` implements audio mixing and resampling routines.
* `libswscale` implements color conversion and scaling routines.

## Tools

* [ffmpeg](https://ffmpeg.org/ffmpeg.html) is a command line toolbox to
  manipulate, convert and stream multimedia content.
* [ffplay](https://ffmpeg.org/ffplay.html) is a minimalistic multimedia player.
* [ffprobe](https://ffmpeg.org/ffprobe.html) is a simple analysis tool to inspect
  multimedia content.
* [ffserver](https://ffmpeg.org/ffserver.html) is a multimedia streaming server
  for live broadcasts.
* Additional small tools such as `aviocat`, `ismindex` and `qt-faststart`.

## Documentation

The offline documentation is available in the **doc/** directory.

The online documentation is available in the main [website](https://ffmpeg.org)
and in the [wiki](https://trac.ffmpeg.org).

### Examples

Coding examples are available in the **doc/examples** directory.

## License

FFmpeg codebase is mainly LGPL-licensed with optional components licensed under
GPL. Please refer to the LICENSE file for detailed information.

## Contributing

Patches should be submitted to the ffmpeg-devel mailing list using
`git format-patch` or `git send-email`. Github pull requests should be
avoided because they are not part of our review process and will be ignored.
