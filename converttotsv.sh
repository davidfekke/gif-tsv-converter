filename="$1"
extension="${filename##*.}"
filestart="${filename##*/}"

num=`convert $1 -coalesce -format "%s\n" info: | tail -n 1`

echo "TinyScreen video conversion"
echo $num "frames to convert"
rm -f temp.gray
rm -f temp.bmp
rm -f "${filestart%.*}.tsv"
for ((i=0; i<=num; i++)); do
convert $1[$i] -resize 96x64! -evaluate multiply 1.25 "temp.bmp"
convert temp.bmp -channel B -evaluate and 57344 -channel G -evaluate and 57344 -evaluate divide 8 -channel R -evaluate and 49152 -evaluate divide 64 +channel -separate -background black -compose plus -flatten "temp.gray"
cat temp.gray >> "${filestart%.*}.tsv"
done
rm -f temp.gray
rm -f temp.bmp