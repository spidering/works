#!bin/bash
#cd $HOME/source
VERSION=netbsd-7
DATE=201510232200Z
URL=ftp://nyftp.netbsd.org/pub/NetBSD-daily/${VERSION}/${DATE}/source/sets/
PKGSRC=http://ftp.jaist.ac.jp/pub/pkgsrc/stable/pkgsrc.tar.gz

files=("gnusrc.tgz" "sharesrc.tgz" "syssrc.tgz" "src.tgz" "xsrc.tgz")
      #echo ${files[@]}


for n in ${files[@]}
do
    #echo $URL$n #For url check
    ftp -n $URL$n

done
ftp -i -n PKGSRC

sleep 1m

for x in *.tgz
do
    tar xvzpf $x -C /

done
