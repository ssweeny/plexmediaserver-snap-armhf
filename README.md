# plexmediaserver-snap-armhf
Snap package of Plex Media Server for armhf devices

[![Snap Status](https://build.snapcraft.io/badge/ssweeny/plexmediaserver-snap-armhf.svg)](https://build.snapcraft.io/user/ssweeny/plexmediaserver-snap-armhf)

## Build
To build, you will need an Ubuntu machine with the [snapcraft](https://snapcraft.io/) tool installed. Make sure you have it with:

```
$ sudo apt install snapcraft
```

Then you can simply run `snapcraft` from this directory to build your package.

## Install
In the general case you can install with

```
$ sudo snap install --dangerous --devmode plexmediaserver*.snap
```

If your media files are all under `/media` you can add a bit of security by installing with these options instead:

```
$ sudo snap install --dangerous --jailmode plexmediaserver*.snap
```

If you are installing with `--jailmode` make sure your snap has the `removable-media` interface connected:
```
$ sudo snap connect plexmediaserver:removable-media
```

## Notes
I've been running this package for well over a year on a humble Raspberry Pi 2, updating manually when new versions are released. The only issue I've had is that the metadata can take up a lot of space if you have a large library, so you want to make sure you have a large SD card or you can mount `/var/snap` to your external storage.
