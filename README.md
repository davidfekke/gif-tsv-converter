# gif-tsv-converter
Creating a animated GIF to TSV converter for the Tiny-Screen

This script requires that the latest version of ImageMagick be installed on your system.

I modified Tony Batey's shell script and renamed it 'converttotsv.sh'.

On the Mac or Linux, you will have to sudo chmod the file to 755.

```shell
sudo chmod 755 'converttotsv.sh'
```

Then from the command line you can run the shell command like so;

```shell
./converttotsv.sh tetris.gif
```

Note: This will not work on all animated gif files. I still do not know what format the individual frames are being written to for the tsv format.