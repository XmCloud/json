#!/bin/sh

if [ ! -z $1 ];then

	if [ $1 = "Android" ];then
		echo "----- start build $1 lib----"
		cd make_android_lib
		./make_android_lib.sh
		cd -
		
		cd make_android_bin
		./make_android_bin.sh
		cd -
		exit
	fi

	echo "----- start build $1 lib----"
	cp ./Makefile.Configs/config.$1 ./config
	make clean
	make
	echo "----- end build $1 lib----"
	exit 0
fi
PLATFORM_LIST="Amba DM365 GM818X GM8136S HI3511 HI3515 HI3516A HI3516CV300 HI3518 HI3518EV200 HI3520 HI3520A HI3520D HI3520DV300 HI3521A HI3521 HI3531 HI3531A HI3535 HI3536 HI3798 HI3798C Linux mozart3c MSC316D VC736"

for dir in $PLATFORM_LIST
do
	echo "----- start build $dir lib----"
	rm -rf ./config
	cp ./Makefile.Configs/config.$dir ./config
	make clean
	make
	echo "----- end build $dir lib----"
done

#cd make_android_lib
#./make_android_lib.sh
#cd -

#cd make_android_bin
#./make_android_bin.sh
#cd -

