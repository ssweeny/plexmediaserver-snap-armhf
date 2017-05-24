PLEX_VERSION=${SNAPCRAFT_PROJECT_VERSION}
PLEX_ARCHIVE="PlexMediaServer-${PLEX_VERSION}-arm7.spk"
all:

install:
	wget https://downloads.plex.tv/plex-media-server/${PLEX_VERSION}/${PLEX_ARCHIVE}
	mv ${PLEX_ARCHIVE} plex.tar # rename the file so tar doesn't complain
	tar --extract --file=plex.tar package.tgz
	mkdir -p $(DESTDIR)/usr/lib/plexmediaserver
	tar --extract --gunzip --file=package.tgz --directory=$(DESTDIR)/usr/lib/plexmediaserver
	
