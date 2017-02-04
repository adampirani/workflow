# Wget Loop

This wickedly simple script has 2 parts:

### 1. paths.txt
You should change this file to be a list of urls to download, one url per line. Use url.txt to add the domain to relative urls.

### 2. url.txt
**If you're using absolute urls make sure the url.txt file is blank.**

Whatever's in this file gets added to each entry in paths.txt, so if url.txt is:

	http://www.reddit.com

and the first line of paths.txt is
	
	/r/dataisbeautiful

the curl will use

	http://www.reddit.com/r/dataisbeautiful

### 3. save-to-ia.sh
run this script by navigating a terminal to the url-archiver directory and entering:

	./save-to-ia.sh

This will start the archiving process. All files will be saved on the Internet Archiver

** **

## Pauses between downloads.
This script puts a short "break" between each download, this is so that we're nice to the servers we're downloading from. Please leave this sleep in to avoid hurting anyone's servers.