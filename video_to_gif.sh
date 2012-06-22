#!/bin/bash
echo Making a gif from time $1 for $2 seconds from video file $3 to output $4
VARPATH="global variable"
function _path_find {
	VARPATH=`pwd $3`
	echo $VARPATH
}
_path_find
mkdir video_to_gif
cd video_to_gif
mplayer -ss $1 -endpos $2 -vo png $VARPATH/$3
convert *.png $4.gif
rm *.png
cd ..
cp video_to_gif/$4.gif .
rm -rf video_to_gif
#echo $VARPATH
