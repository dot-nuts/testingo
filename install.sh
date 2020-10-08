#! /bin/sh
echo "url"
url="$3"
echo $url
echo "filename"
filename=$(basename "$url")
echo $filename
echo "workpath"
workpath=$(dirname $(readlink -f $0))
echo $workpath
echo "curl"
curl $url -o $workpath/$filename -s
echo "dpkg"
sudo dpkg --install  $workpath/$filename
