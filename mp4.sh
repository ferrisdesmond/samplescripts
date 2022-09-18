#!/bin/bash

for i in ${@} ; do
	echo "[+] Downloading video $i"
	yt-dlp --download-archive $HOME/Vídeos/downloaded.txt --add-metadata -f best -o '%(title)s_%(channel)s_%(upload_date)s_%(id)s.%(ext)s' $i 2>/dev/null
done
