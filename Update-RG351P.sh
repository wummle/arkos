#!/bin/bash
clear

UPDATE_DATE="11072024"
LOG_FILE="/home/ark/update$UPDATE_DATE.log"
UPDATE_DONE="/home/ark/.config/.update$UPDATE_DATE"

if [ -f "$UPDATE_DONE" ] && [ -f "/home/ark/.config/.kernelupdate02032021" ]; then
	msgbox "No more updates available.  Check back later."
	rm -- "$0"
	exit 187
fi

if [ -f "$LOG_FILE" ]; then
	sudo rm "$LOG_FILE"
fi

c_brightness="$(cat /sys/devices/platform/backlight/backlight/backlight/brightness)"
sudo chmod 666 /dev/tty1
echo 255 > /sys/devices/platform/backlight/backlight/backlight/brightness
touch $LOG_FILE
tail -f $LOG_FILE >> /dev/tty1 &



if [ ! -f "/home/ark/.config/.update07152021" ]; then

	printf "\nRetroArch 1.9.6 and add GX4000\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/07152021/rg351p/arkosupdate07152021.zip -O /home/ark/arkosupdate07152021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate07152021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate07152021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate07152021.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate07152021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update07152021"

fi


if [ ! -f "/home/ark/.config/.update08092021" ]; then

	printf "\nStreet of Rage Remake\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/08092021/arkosupdate08092021.zip -O /home/ark/arkosupdate08092021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate08092021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate08092021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate08092021.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate08092021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update08092021"

fi


if [ ! -f "/home/ark/.config/.update09052021" ]; then

	printf "\nRetroArch 1.9.8\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/09052021/arkosupdate09052021.zip -O /home/ark/arkosupdate09052021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate09052021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate09052021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate09052021.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate09052021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update09052021"

fi


if [ ! -f "/home/ark/.config/.update09062021" ]; then

	printf "\nRetroArch 1.9.8\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/09062021/arkosupdate09062021.zip -O /home/ark/arkosupdate09062021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate09062021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate09062021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate09062021.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate09062021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update09062021"

fi


if [ ! -f "/home/ark/.config/.update10212021" ]; then

	printf "\nRetroArch 1.9.11\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/10212021/arkosupdate10212021.zip -O /home/ark/arkosupdate10212021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate10212021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate10212021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate10212021.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate10212021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update10212021"

fi


if [ ! -f "/home/ark/.config/.update10262021" ]; then

	printf "\nRetroArch 1.9.11\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/10262021/arkosupdate10262021.zip -O /home/ark/arkosupdate10262021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate10262021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate10262021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate10262021.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate10262021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update10262021"

fi


if [ ! -f "/home/ark/.config/.update11172021" ]; then

	printf "\nRetroArch 1.9.13\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/11172021/arkosupdate11172021.zip -O /home/ark/arkosupdate11172021.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate11172021.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate11172021.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate11172021.zip -d / | tee -a "$LOG_FILE"
		sudo cp -f -v /usr/bin/emulationstation/emulationstation.351v /usr/bin/emulationstation/emulationstation | tee -a "$LOG_FILE"
		sudo chmod 777 /usr/bin/emulationstation/emulationstation
		sudo rm -v /usr/bin/emulationstation/emulationstation.351v | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate11172021.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nRemove old logs, cache and backup folder files from var folder\n" | tee -a "$LOG_FILE"
	sudo rm -rfv /var/cache/* | tee -a "$LOG_FILE"
	sudo rm -rfv /var/backups/* | tee -a "$LOG_FILE"
	sudo journalctl --vacuum-time=1s | tee -a "$LOG_FILE"

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update11172021"

fi


if [ ! -f "/home/ark/.config/.update01132022" ]; then

	printf "\nRetroArch 1.9.14\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/01132022/arkosupdate01132022.zip -O /home/ark/arkosupdate01132022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate01132022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate01132022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate01132022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate01132022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update01132022"

fi


if [ ! -f "/home/ark/.config/.update01142022" ]; then

	printf "\nGX4000 now using retroarch 1.9.6\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/01142022/arkosupdate01142022.zip -O /home/ark/arkosupdate01142022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate01142022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate01142022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate01142022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate01142022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update01142022"

fi


if [ ! -f "/home/ark/.config/.update02142022" ]; then

	printf "\nUpdate Retroarch\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/02142022/arkosupdate02142022.zip -O /home/ark/arkosupdate02142022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate02142022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate02142022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate02142022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate02142022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update02142022"

fi

if [ ! -f "/home/ark/.config/.update05142022" ]; then

	printf "\nUpdate extfat drivers\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/05142022/arkosupdate05142022.zip -O /home/ark/arkosupdate05142022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate05142022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate05142022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate05142022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate05142022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi
	sudo apt remove -y exfat-fuse
	sudo install -m644 -b -D -v /home/ark/exfat.ko.351 /lib/modules/$(uname -r)/kernel/fs/exfat/exfat.ko
	sudo depmod -a
	sudo modprobe -v exfat
	sudo rm -v /home/ark/exfat.ko*
	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.14.1 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.10.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update05142022"

fi


if [ ! -f "/home/ark/.config/.update06062022" ]; then

	printf "\nUpdate SDL2 to 2.0.18.2\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/06062022/arkosupdate06062022.zip -O /home/ark/arkosupdate06062022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate06062022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate06062022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate06062022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate06062022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi
	sudo mv -f -v /home/ark/sdl2-64/libSDL2-2.0.so.0.18.2.rotated /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 | tee -a "$LOG_FILE"
	  sudo mv -f -v /home/ark/sdl2-32/libSDL2-2.0.so.0.18.2.rotated /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 | tee -a "$LOG_FILE"
	  sudo rm -rfv /home/ark/sdl2-64 | tee -a "$LOG_FILE"
	  sudo rm -rfv /home/ark/sdl2-32 | tee -a "$LOG_FILE"

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update06062022"

fi

if [ ! -f "/home/ark/.config/.update10022022" ]; then

	printf "\nUpdate retroarch info files to make save states work on rumble cores\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/10022022/arkosupdate10022022.zip -O /home/ark/arkosupdate10022022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate10022022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate10022022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate10022022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate10022022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update10022022"

fi


if [ ! -f "/home/ark/.config/.update12022022" ]; then

	printf "\nAdd GZDoom\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/12022022/arkosupdate12022022.zip -O /home/ark/arkosupdate12022022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate12022022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate12022022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate12022022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate12022022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

    sudo chown -R ark:ark /opt/ 
    sudo chmod ugo+rwx /opt/gzdoom/*
    sudo chown -R ark:ark /home/ark/.config/gzdoom/
    sudo chmod ugo+rwx -R /home/ark/.config/gzdoom/*
    sudo chmod ugo+rwx /opt/quitter/*
    sudo chmod 755 /usr/lib/aarch64-linux-gnu/libSDL2_gfx-1.0.so.0
    sudo chmod 755 /usr/lib/aarch64-linux-gnu/libzmusic.so.1
    sudo chmod 755 /usr/lib/aarch64-linux-gnu/libzmq.so.5.2.2
    sudo chmod ugo+rwx /usr/local/bin/doom.sh

     if test -z "$(grep 'standalone-gzdoom' /etc/emulationstation/es_systems.cfg | tr -d '\0')"
       then
        sed -i '/doom.sh/!{p;d;};n;a \\t\t      <emulator name=\"\standalone-gzdoom\">\n\t\t   <\/emulator>' /etc/emulationstation/es_systems.cfg
     fi

    cp -f -v /home/ark/.config/gzdoom/gzdoom.ini.351p /home/ark/.config/gzdoom/gzdoom.ini  
    rm -f -v /opt/gzdoom/gzdoom.351v
    rm -f -v /opt/gzdoom/gzdoom.chi

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update12022022"

fi


if [ ! -f "/home/ark/.config/.update12092022" ]; then

	printf "\nUpdate PPSSPP\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/12092022/arkosupdate12092022.zip -O /home/ark/arkosupdate12092022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate12092022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate12092022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate12092022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate12092022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

    sudo chmod ugo+rwx /opt/ppsspp/PPSSPPSDL

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update12092022"

fi


if [ ! -f "/home/ark/.config/.update12102022" ]; then

	printf "\nUpdate RetroArch\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/12102022/arkosupdate12102022.zip -O /home/ark/arkosupdate12102022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate12102022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate12102022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate12102022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate12102022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

    sudo chmod ugo+rwx /opt/retroarch/bin/*

    printf "\nClean up some old unneeded files in the system\n" | tee -a "$LOG_FILE"
    sudo rm -rfv /var/cache/* | tee -a "$LOG_FILE"
    sudo rm -rfv /var/backups/* | tee -a "$LOG_FILE"
    sudo journalctl --vacuum-time=1s

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update12102022"

fi


if [ ! -f "/home/ark/.config/.update12202022" ]; then

	printf "\nUpdate PPSSPP to 1.14, update RetroArch to 1.14.0, fix Playstation file extension typo (Credit to K-tec-UK) \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/12202022/arkosupdate12202022.zip -O /home/ark/arkosupdate12202022.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate12202022.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate12202022.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate12202022.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate12202022.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update12202022"

fi


if [ ! -f "/home/ark/.config/.update02022023" ]; then

	printf "\nUpdate PPSSPP to 1.14.4\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/02022023/arkosupdate02022023.zip -O /home/ark/arkosupdate02022023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate02022023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate02022023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate02022023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate02022023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi
	
    sudo chmod ugo+rwx /opt/ppsspp/PPSSPPSDL

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe fork" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update02022023"

fi


if [ ! -f "/home/ark/.config/.update03262023" ]; then

	printf "\nUpdate SDL2 to 2.0.26.2, RetroArch 1.15.0, Add swanstation PSX core, update mupen64plus, fix GZDoom for SDL2.0.26.2, update scummvm and drastic launchers, update filebrowser CLI\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03262023/arkosupdate03262023.zip -O /home/ark/arkosupdate03262023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03262023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03262023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03262023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03262023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

    sudo chown -R ark:ark /opt/ 
    sudo chmod ugo+rwx /opt/gzdoom/*
    sudo chown -R ark:ark /home/ark/.config/gzdoom/
    sudo chmod ugo+rwx -R /home/ark/.config/gzdoom/*
    sudo chmod 755 /usr/lib/aarch64-linux-gnu/libzmusic.so.1
    sudo chmod ugo+rwx /usr/local/bin/doom.sh

    printf "\nInstall and link new SDL 2.0.2600.2 (aka SDL 2.0.26.2)\n" | tee -a "$LOG_FILE"
    sudo mv -f -v /home/ark/sdl2-64/libSDL2-2.0.so.0.2600.2.rotated /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2600.2 | tee -a "$LOG_FILE"
	  sudo mv -f -v /home/ark/sdl2-32/libSDL2-2.0.so.0.2600.2.rotated /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2600.2 | tee -a "$LOG_FILE"
	  sudo rm -rfv /home/ark/sdl2-64 | tee -a "$LOG_FILE"
	  sudo rm -rfv /home/ark/sdl2-32 | tee -a "$LOG_FILE"
	  sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	  sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2600.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
	  sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	  sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2600.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

    printf "\nUpdate RetroArch to v1.15.0 for 351p and 351m\n" | tee -a "$LOG_FILE"
	  cp -fv /opt/retroarch/bin/retroarch32.rk3326.rot /opt/retroarch/bin/retroarch32 | tee -a "$LOG_FILE"
	  cp -fv /opt/retroarch/bin/retroarch.rk3326.rot /opt/retroarch/bin/retroarch | tee -a "$LOG_FILE"
	  rm -fv /opt/retroarch/bin/retroarch.* | tee -a "$LOG_FILE"
	  rm -fv /opt/retroarch/bin/retroarch32.* | tee -a "$LOG_FILE"

    printf "\nCrate backup of es_systems.cfg in case something goes wrong\n" | tee -a "$LOG_FILE"
    cp -v /etc/emulationstation/es_systems.cfg /etc/emulationstation/es_systems.cfg.update03212023.bak | tee -a "$LOG_FILE"

    printf "\nAdd swanstation libreto for psx to ES\n" | tee -a "$LOG_FILE"
    if test -z "$(grep 'swanstation' /usr/local/bin/perfmax | tr -d '\0')"
		then
        sudo sed -i '/\[\[ \$2 == "duckstation" \]\]/s//\[\[ \$2 == "duckstation" \]\] || \[\[ \$2 == "swanstation" \]\] || \[\[ \$2 == *"uae"* \]\]/' /usr/local/bin/perfmax
  		  sudo sed -i '/\[\[ \$2 == "duckstation" \]\]/s//\[\[ \$2 == "duckstation" \]\] || \[\[ \$2 == "swanstation" \]\] || \[\[ \$2 == *"uae"* \]\]/' /usr/local/bin/perfmax.pic
  		  sudo sed -i '/\[\[ \$2 == "duckstation" \]\]/s//\[\[ \$2 == "duckstation" \]\] || \[\[ \$2 == "swanstation" \]\] || \[\[ \$2 == *"uae"* \]\]/' /usr/local/bin/perfmax.asc
		fi

    if test -z "$(grep 'swanstation' /etc/emulationstation/es_systems.cfg | tr -d '\0')"
    then
      sed -i '/<core>duckstation<\/core>/c\\t\t\t  <core>duckstation<\/core>\n\t\t\t  <core>swanstation<\/core>' /etc/emulationstation/es_systems.cfg
    fi

    cp -fv /home/ark/swanstation_libretro.so.rk3326 /home/ark/.config/retroarch/cores/swanstation_libretro.so | tee -a "$LOG_FILE"
    mv -fv /home/ark/.config/retroarch/cores/swanstation_libretro.so.rk3326 /home/ark/.config/retroarch/cores/swanstation_libretro.so | tee -a "$LOG_FILE"
    sudo rm -rf /home/ark/swanstation_libretro* | tee -a "$LOG_FILE"

    printf "\nCleanup some unneeded left over files in the home folder from previous updates if need be\n" | tee -a "$LOG_FILE"
    if [ $(ls -1 /home/ark/*.dtb 2>/dev/null | wc -l) != 0 ]; then
      sudo rm -fv /home/ark/*.dtb | tee -a "$LOG_FILE"
      sudo rm -fv /home/ark/*.v2 | tee -a "$LOG_FILE"
      printf "   Cleaned up some unneeded files found.\n" | tee -a "$LOG_FILE"
    else
      printf "   No clean up needed.\n" | tee -a "$LOG_FILE"
    fi
    
    printf "\nEnable software renderer for swanstation by default\n" | tee -a "$LOG_FILE"
    if test ! -z "$(cat /home/ark/.config/retroarch/retroarch-core-options.cfg | grep 'swanstation_GPU_Renderer' | tr -d '\0')"
    then
      sed -i '/swanstation_GPU_Renderer \= /c\swanstation_GPU_Renderer \= "Software"' /home/ark/.config/retroarch/retroarch-core-options.cfg
      sed -i '/mgba_use_bios \= \"ON\"/c\mgba_use_bios \= \"ON\"\nswanstation_GPU_Renderer \= "Software"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
    else
  	  sed -i '/mgba_use_bios \= \"ON\"/c\mgba_use_bios \= \"ON\"\nswanstation_GPU_Renderer \= "Software"' /home/ark/.config/retroarch/retroarch-core-options.cfg
  	  sed -i '/mgba_use_bios \= \"ON\"/c\mgba_use_bios \= \"ON\"\nswanstation_GPU_Renderer \= "Software"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
    fi

    printf "\nCopy mupen64plus standalone\n" | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus-video-GLideN64.so.rk3326 /opt/mupen64plus/mupen64plus-video-GLideN64.so | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus-video-glide64mk2.so.rk3326 /opt/mupen64plus/mupen64plus-video-glide64mk2.so | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus-video-rice.so.rk3326 /opt/mupen64plus/mupen64plus-video-rice.so | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus-audio-sdl.so.rk3326 /opt/mupen64plus/mupen64plus-audio-sdl.so | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus.rk3326 /opt/mupen64plus/mupen64plus | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/libmupen64plus.so.2.0.0.rk3326 /opt/mupen64plus/libmupen64plus.so.2.0.0 | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus-rsp-hle.so.rk3326 /opt/mupen64plus/mupen64plus-rsp-hle.so | tee -a "$LOG_FILE"
	  cp -fv /opt/mupen64plus/mupen64plus-input-sdl.so.rk3326 /opt/mupen64plus/mupen64plus-input-sdl.so | tee -a "$LOG_FILE"
	  rm -fv /opt/mupen64plus/*.rk3326 | tee -a "$LOG_FILE"

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
    sudo chown -R ark:ark /home/ark
    sudo chmod -R 755 /home/ark

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2600.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2600.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wummle gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03262023"

fi


if [ ! -f "/home/ark/.config/.update04052023" ]; then

	printf "\nRevert filebrowser back to working version\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/04052023/arkosupdate04052023.zip -O /home/ark/arkosupdate04052023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate04052023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate04052023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate04052023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate04052023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi
	
    #Ensure permissions are set correctly on filebrowser executable
    sudo chmod 777 /usr/local/bin/filebrowser

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2600.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2600.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update04052023"

fi


if [ ! -f "/home/ark/.config/.update08252023" ]; then

	printf "\nquicknes, fceumm, supafaust, 32bit gpsp, A5200, puae2021, Gearsystem, picodrive, gearcoleco, coolCV, fbneo-neogeocd, Fake08, Arduboy, vic20, microvision, mame2003_plus to arcade, cap32 update, ECWolf update, retroarch 1.15.0 performance, retroarch filters, (Add extensions for C64, Genesis, AmigaCD32, PC98, AmstradCPC and movie player), OpenBOR update, PPSSPP update, (mgba, 3DO and virtualboy default to performance mode), SDL 2.0.28.2\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/08252023/arkosupdate08252023.zip -O /home/ark/arkosupdate08252023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate08252023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate08252023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate08252023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate08252023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


    printf "\n Note: All Added systems in this list have been hardcoded into this archived es_systems.cfg that will replace the old es_systems.cfg.  This is because the scripted injection method severely broke the contents of the file for reasons unknown (this usually doesn't happen), so this process has instead been performed manually to ensure a working configuration. \n" | tee -a "$LOG_FILE"
    printf "\n Most if not all updates here have been brought in from other updates provided by (and thanks to) christianhaitian and all who contributed \n" | tee -a "$LOG_FILE"

    printf "\n ---CORES--- \n" | tee -a "$LOG_FILE"
    printf "\n Update ECWolf to 1.4.1 and add mods support \n" | tee -a "$LOG_FILE"
    printf "\n Add quicknes core for NES and Famicom Disk System \n" | tee -a "$LOG_FILE"
    printf "\n Add support for fceumm to Famicom system \n" | tee -a "$LOG_FILE"
    printf "\n Add supafaust core for SNES \n" | tee -a "$LOG_FILE"
    printf "\n Add 32bit gpsp core for GBA \n" | tee -a "$LOG_FILE"
    printf "\n Add A5200 libretro core as additional core for Atari 5200 \n" | tee -a "$LOG_FILE"
    printf "\n Add puae2021 libretro core for Amiga \n" | tee -a "$LOG_FILE"
    printf "\n Add Gearsystem and picodrive cores for Sega Master System \n" | tee -a "$LOG_FILE"
    printf "\n Add Gearsystem core for Game Gear \n" | tee -a "$LOG_FILE"
    printf "\n Add gearcoleco libretro core for colecovision \n"
    printf "\n Add fbneo as optional core for NeoGeo CD \n" | tee -a "$LOG_FILE"
    printf "\n Add coolCV core for colecovision \n" | tee -a "$LOG_FILE"
    printf "\n Add Fake08 emulator for PICO-8 \n" | tee -a "$LOG_FILE"
	  printf "\n Add widescreen mode support for mupen64plus-glide64mk2 \n" | tee -a "$LOG_FILE"
    printf "\n Update cap32 core for Amstrad CPC and GX4000 \n" | tee -a "$LOG_FILE"

    printf "\n ---RETROARCH--- \n" | tee -a "$LOG_FILE"
    printf "\n Rebuild retroarch and retroarch32 v1.15.0 to resolve microstutter issues \n" | tee -a "$LOG_FILE"
    printf "\n Add retroarch video filters \n" | tee -a "$LOG_FILE"
    printf "\n Add retroarch audio filters \n" | tee -a "$LOG_FILE"

    printf "\n ---EXTENSIONS--- \n" | tee -a "$LOG_FILE"
    printf "\n Add prg, d71, d81, nib, tap, and vsf support for C64 \n" | tee -a "$LOG_FILE"
    printf "\n Add sgd support for Genesis and MD \n" | tee -a "$LOG_FILE"
    printf "\n Add chd support for Amiga CD32 \n" | tee -a "$LOG_FILE"
    printf "\n Add .cmd extension support for PC98 \n" | tee -a "$LOG_FILE"
    printf "\n Add .mov extension for video player \n" | tee -a "$LOG_FILE"
    printf "\n Add cpc and 7z support for Amstrad CPC \n" | tee -a "$LOG_FILE"

    printf "\n ---STANDALONE EMULATOR UPDATES--- \n" | tee -a "$LOG_FILE"
	  printf "\n Add GLideN64 plugin for mupen64plus standalone to ES \n" | tee -a "$LOG_FILE"
    printf "\n Update OpenBOR \n" | tee -a "$LOG_FILE"
    printf "\n Update PPSSPPSDL to v1.15.3-26 \n" | tee -a "$LOG_FILE"

    printf "\n ---THEMES--- \n" | tee -a "$LOG_FILE"
    printf "\n Update NesBox Theme \n" | tee -a "$LOG_FILE"

    printf "\n ---TOOLS--- \n" | tee -a "$LOG_FILE"
    printf "\n Add tool to remove ._ Mac files \n" | tee -a "$LOG_FILE"

    printf "\n ---ADDITIONAL UPDATES AND CHANGES FOR THIS UPDATE--- \n" | tee -a "$LOG_FILE"


    printf "\n Set permissions on es_systems.cfg in case they were altered \n" | tee -a "$LOG_FILE"
      sudo chmod ugo+rwx /etc/emulationstation/es_systems.cfg

    printf "\n Set permissions on ecwolf.sh in case they were altered \n" | tee -a "$LOG_FILE"
      sudo chmod ugo+rwx /usr/local/bin/ecwolf.sh

    printf "\n Set permissions on vice_xvic_libretro core in case they were altered \n" | tee -a "$LOG_FILE"
      sudo chmod ugo+rwx /home/ark/.config/retroarch/cores/vice_xvic_libretro.so


    printf "\n Change mednafen_vb options cpu emulation to fast \n" | tee -a "$LOG_FILE"
      if [[ ! -z $(cat /home/ark/.config/retroarch/retroarch-core-options.cfg | grep vb_cpu_emulation) ]]; then
        sed -i '/vb_cpu_emulation \= /c\vb_cpu_emulation \= \"fast\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
      else
        printf '\nvb_cpu_emulation = "fast"' | tee -a /home/ark/.config/retroarch/retroarch-core-options.cfg
      fi
    printf '\nvb_cpu_emulation = "fast"' | tee -a /home/ark/.config/retroarch/retroarch-core-options.cfg.bak


    printf "\n Add video filters and set default filters' paths for retroarch and retroarch32 \n" | tee -a "$LOG_FILE"
      sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch\/filters\/video\"" /home/ark/.config/retroarch/retroarch.cfg && sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch\/filters\/video\"" /home/ark/.config/retroarch/retroarch.cfg.bak && sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch32\/filters\/video\"" /home/ark/.config/retroarch32/retroarch.cfg && sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch32\/filters\/video\"" /home/ark/.config/retroarch32/retroarch.cfg.bak
      sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch32\/filters\/video\"" /home/ark/.config/retroarch/config/Atari800/retroarch_5200.cfg && sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch32\/filters\/video\"" /home/ark/.config/retroarch/config/Atari800/retroarch_A800.cfg && sed -i "/video_filter_dir \= \"default\"/c\video_filter_dir \= \"\/home\/ark\/.config\/retroarch32\/filters\/video\"" /home/ark/.config/retroarch/config/Atari800/retroarch_XEGS.cfg

    printf "\n Update audio filters directory in retroarch and retroarch32 configs \n" | tee -a "$LOG_FILE"
      sed -i "/audio_filter_dir = \"/c\\audio_filter_dir = \"~\/.config\/retroarch\/filters\/audio\"" /home/ark/.config/retroarch/retroarch.cfg
      sed -i "/audio_filter_dir = \"/c\\audio_filter_dir = \"~\/.config\/retroarch\/filters\/audio\"" /home/ark/.config/retroarch/retroarch.cfg.bak
      sed -i "/audio_filter_dir = \"/c\\audio_filter_dir = \"~\/.config\/retroarch32\/filters\/audio\"" /home/ark/.config/retroarch32/retroarch.cfg
      sed -i "/audio_filter_dir = \"/c\\audio_filter_dir = \"~\/.config\/retroarch32\/filters\/audio\"" /home/ark/.config/retroarch32/retroarch.cfg.bak


    printf "\n Force the use of older SDL2 for hypseus due to audio sync issue \n" | tee -a "$LOG_FILE"
      if test -z "$(cat /usr/local/bin/daphne.sh | grep -i 'libSDL2-2.0.so.0.1')"
      then
          sudo sed -i '/\.\/hypseus/s//LD_PRELOAD=\/usr\/lib\/aarch64-linux-gnu\/libSDL2-2.0.so.0.14.1 .\/hypseus/' /usr/local/bin/daphne.sh
      fi


    printf "\n Added Arduboy \n" | tee -a "$LOG_FILE"
      mkdir -v /roms/arduboy | tee -a "$LOG_FILE"


    printf "\n Duckstation optimization \n" | tee -a "$LOG_FILE"
      if test -z "$(grep 'record' /usr/local/bin/perfmax | tr -d '\0')"
      then
        sudo sed -i '/\[\[ \$2 == "duckstation" \]\]/s//\[\[ $2 == \"duckstation\" \]\] || [[ "$2" == *\"record\"* ]]/' /usr/local/bin/perfmax
        sudo sed -i '/\[\[ \$2 == "duckstation" \]\]/s//\[\[ $2 == \"duckstation\" \]\] || [[ "$2" == *\"record\"* ]]/' /usr/local/bin/perfmax.pic
        sudo sed -i '/\[\[ \$2 == "duckstation" \]\]/s//\[\[ $2 == \"duckstation\" \]\] || [[ "$2" == *\"record\"* ]]/' /usr/local/bin/perfmax.asc
      fi


    printf "\n Add mame2003_plus to arcade, cps1, cps2, and cps3 \n" | tee -a "$LOG_FILE"
      sed -i '/mame2003-plus_skip_disclaimer \=/c\mame2003-plus_skip_disclaimer \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg
      sed -i '/mame2003-plus_skip_disclaimer \=/c\mame2003-plus_skip_disclaimer \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      sed -i '/mame2003-plus_skip_warnings \=/c\mame2003-plus_skip_warnings \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg
      sed -i '/mame2003-plus_skip_warnings \=/c\mame2003-plus_skip_warnings \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      sudo sed -i 's/exfat defaults,auto,umask=000,noatime 0 0/exfat defaults,auto,umask=000,uid=1002,gid=1002,noatime 0 0/' /etc/fstab
      sudo sed -i 's/exfat umask=0000,iocharset=utf8,noatime 0 0/exfat umask=0000,iocharset=utf8,uid=1002,gid=1002,noatime 0 0/' /etc/fstab


    printf "\n Duckstation update \n" | tee -a "$LOG_FILE"
		if [ -e "/dev/input/by-path/platform-ff300000.usb-usb-0:1.2:1.0-event-joystick" ]; then
		  printf "\n Copy correct duckstation binary per device \n" | tee -a "$LOG_FILE"
		  sudo rm -fv /usr/local/bin/duckstation-nogui.chirgb10 | tee -a "$LOG_FILE"
		  #sed -i '/Rotate = 1/d' /home/ark/.config/duckstation/settings.ini
		fi


    printf "\n GlideN64 video plugin for mupen64plus \n" | tee -a "$LOG_FILE"
      if test -z "$(cat /home/ark/.config/mupen64plus/mupen64plus.cfg | grep Video-GLideN64)"
      then
        sed -i -e '/Rotate \= 0/{r /home/ark/add_gliden64_to_mupen64plus_cfg.txt' -e 'd}' /home/ark/.config/mupen64plus/mupen64plus.cfg
      fi
      if test -z "$(grep 'GlideN64' /usr/local/bin/perfmax | tr -d '\0')"
      then
          sudo sed -i '/\[\[ \$1 == "standalone-Rice" \]\] || \[\[ \$1 == "standalone-Glide64mk2" \]\]/s//\[\[ \$1 == "standalone-Rice" \]\] || \[\[ \$1 == "standalone-Glide64mk2" \]\] || \[\[ \$1 == "standalone-GlideN64" \]\]/' /usr/local/bin/perfmax
          sudo sed -i '/\[\[ \$1 == "standalone-Rice" \]\] || \[\[ \$1 == "standalone-Glide64mk2" \]\]/s//\[\[ \$1 == "standalone-Rice" \]\] || \[\[ \$1 == "standalone-Glide64mk2" \]\] || \[\[ \$1 == "standalone-GlideN64" \]\]/' /usr/local/bin/perfmax.pic
          sudo sed -i '/\[\[ \$1 == "standalone-Rice" \]\] || \[\[ \$1 == "standalone-Glide64mk2" \]\]/s//\[\[ \$1 == "standalone-Rice" \]\] || \[\[ \$1 == "standalone-Glide64mk2" \]\] || \[\[ \$1 == "standalone-GlideN64" \]\]/' /usr/local/bin/perfmax.asc
      fi


	  printf "\n Add support for 4:3 aspect ratio for mupen64plus standalone rice video plugin \n" | tee -a "$LOG_FILE"
	    if test -z "$(grep "ResolutionWidth" /home/ark/.config/mupen64plus/mupen64plus.cfg | tr -d '\0')"
	    then
	      sed -i "/\[Video-Rice\]/c\\[Video-Rice\]\n\n\# Hack to accomodate widescreen devices (Thanks to AmberElec sources for tip)\nResolutionWidth \= 480" /home/ark/.config/mupen64plus/mupen64plus.cfg
	    fi


    printf "\n Enable Threaded DSP for 3DO by default \n" | tee -a "$LOG_FILE"
      if test ! -z "$(cat /home/ark/.config/retroarch/retroarch-core-options.cfg | grep 'opera_dsp_threaded' | tr -d '\0')"
      then
          sed -i '/opera_dsp_threaded \= "disabled"/c\opera_dsp_threaded \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg
          sed -i '/mgba_use_bios \= \"ON\"/c\mgba_use_bios \= \"ON\"\nopera_dsp_threaded \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      else
          sed -i '/mgba_use_bios \= \"ON\"/c\mgba_use_bios \= \"ON\"\nopera_dsp_threaded \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg
          sed -i '/mgba_use_bios \= \"ON\"/c\mgba_use_bios \= \"ON\"\nopera_dsp_threaded \= "enabled"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      fi


    printf "\n Make sure retroarch core repos are still set to Github if it's been changed and make sure they're set to the correct repo \n" | tee -a "$LOG_FILE"
        sed -i "/core_updater_buildbot_cores_url \=/c\core_updater_buildbot_cores_url \= \"https:\/\/raw.githubusercontent.com\/christianhaitian\/retroarch-cores\/master\/aarch64\/\"" ~/.config/retroarch/retroarch.cfg
        sed -i "/core_updater_buildbot_cores_url \=/c\core_updater_buildbot_cores_url \= \"https:\/\/raw.githubusercontent.com\/christianhaitian\/retroarch-cores\/master\/arm7hf\/\"" ~/.config/retroarch32/retroarch.cfg
        sed -i "/core_updater_buildbot_cores_url \=/c\core_updater_buildbot_cores_url \= \"https:\/\/raw.githubusercontent.com\/christianhaitian\/retroarch-cores\/master\/aarch64\/\"" ~/.config/retroarch/retroarch.cfg.bak
        sed -i "/core_updater_buildbot_cores_url \=/c\core_updater_buildbot_cores_url \= \"https:\/\/raw.githubusercontent.com\/christianhaitian\/retroarch-cores\/master\/arm7hf\/\"" ~/.config/retroarch32/retroarch.cfg.bak
        echo "Retroarch core repos have been changed to github"


    printf "\n Clean up some old unneeded files in the system \n" | tee -a "$LOG_FILE"
      sudo rm -rfv /var/cache/* | tee -a "$LOG_FILE"
      sudo rm -rfv /var/backups/* | tee -a "$LOG_FILE"
      sudo journalctl --vacuum-time=1s


    printf "\n cap32 standalone-Glide64mk2 optimization \n" | tee -a "$LOG_FILE"
      if test -z "$(grep 'cap32' /usr/local/bin/perfmax | tr -d '\0')"
      then
          sudo sed -i '/\[\[ \$1 == "standalone-Glide64mk2" \]\]/s//\[\[ \$1 == "standalone-Glide64mk2" \]\] || \[\[ \$1 == "standalone-GlideN64" \]\] || \[\[ \$2 == "cap32" \]\]/' /usr/local/bin/perfmax
          sudo sed -i '/\[\[ \$1 == "standalone-Glide64mk2" \]\]/s//\[\[ \$1 == "standalone-Glide64mk2" \]\] || \[\[ \$1 == "standalone-GlideN64" \]\] || \[\[ \$2 == "cap32" \]\]/' /usr/local/bin/perfmax.pic
          sudo sed -i '/\[\[ \$1 == "standalone-Glide64mk2" \]\]/s//\[\[ \$1 == "standalone-Glide64mk2" \]\] || \[\[ \$1 == "standalone-GlideN64" \]\] || \[\[ \$2 == "cap32" \]\]/' /usr/local/bin/perfmax.asc
      fi


    printf "\n Apply cap32_libretro updated core \n" | tee -a "$LOG_FILE"
      mv -fv /home/ark/cap32_libretro.so.rk3326 /home/ark/.config/retroarch/cores/cap32_libretro.so | tee -a "$LOG_FILE"


    printf "\n Add symlink for librga.so.2 arm32bit environment \n" | tee -a "$LOG_FILE"
      if [ ! -f "/usr/lib/arm-linux-gnueabihf/librga.so.2" ]; then
        cd /usr/lib/arm-linux-gnueabihf/
        sudo ln -sf librga.so librga.so.2
        cd /home/ark
      else
        printf "  librga.so.2 already exists in /usr/lib/arm-linux-gnueabihf/" | tee -a "$LOG_FILE"
      fi


    printf "\n Add vic20 as separate system \n" | tee -a "$LOG_FILE"
        mkdir -v /roms/vic20 | tee -a "$LOG_FILE"


    printf "\n Add microvision \n" | tee -a "$LOG_FILE"
      if [ ! -d "/roms/mv" ]; then
        mkdir -v /roms/mv | tee -a "$LOG_FILE"
      fi

    printf "\n Set permissions on microvision assets in case they were altered \n" | tee -a "$LOG_FILE"
      sudo chmod ugo+rwx -R /opt/mvem
      sudo chmod ugo+rwx /usr/local/bin/mvem.sh
      sudo chmod ugo+rwx /opt/mvem/gptokeyb


    printf "\n Install puae2021 libretro core \n" | tee -a "$LOG_FILE"
      mv -fv /home/ark/puae2021_libretro.so.rk3326 /home/ark/.config/retroarch/cores/puae2021_libretro.so | tee -a "$LOG_FILE"


    printf "\n Cleanup some unneeded left over files in the home folder from previous updates if need be \n" | tee -a "$LOG_FILE"
      if [ $(ls -1 /home/ark/*.dtb 2>/dev/null | wc -l) != 0 ]; then
        sudo rm -fv /home/ark/*.dtb | tee -a "$LOG_FILE"
        sudo rm -fv /home/ark/*.v2 | tee -a "$LOG_FILE"
        printf "   Cleaned up some unneeded files found.\n" | tee -a "$LOG_FILE"
      else
        printf "   No clean up needed.\n" | tee -a "$LOG_FILE"
      fi


    printf "\n Ensure swanstation and puae2021 work for rk3326 devices \n" | tee -a "$LOG_FILE"
      if [ ! -f "/boot/rk3566.dtb" ] && [ ! -f "/boot/rk3566-OC.dtb" ]; then
        printf "\nFixing swanstation and puae2021 (if) not booting...\n" | tee -a "$LOG_FILE"
        if [ -f "/home/ark/.config/retroarch/cores/swanstation_libretro.so.rk3326" ]; then
          mv -fv /home/ark/.config/retroarch/cores/swanstation_libretro.so.rk3326 /home/ark/.config/retroarch/cores/swanstation_libretro.so | tee -a "$LOG_FILE"
        fi
        if [ -f "/home/ark/.config/retroarch/cores/puae2021_libretro.so.rk3326" ]; then
          mv -fv /home/ark/.config/retroarch/cores/puae2021_libretro.so.rk3326 /home/ark/.config/retroarch/cores/puae2021_libretro.so | tee -a "$LOG_FILE"
        fi
      fi


    printf "\n Default mgba libretro emulator governor to performance \n" | tee -a "$LOG_FILE"
      if test -z "$(grep 'mgba' /usr/local/bin/perfmax.pic | tr -d '\0')"
      then
          sudo sed -i '/\[\[ \$1 == "On" \]\]/s//\[\[ \$1 == "On" \]\] || \[\[ \$2 == *"mgba"* \]\]/' /usr/local/bin/perfmax
          sudo sed -i '/\[\[ \$1 == "On" \]\]/s//\[\[ \$1 == "On" \]\] || \[\[ \$2 == *"mgba"* \]\]/' /usr/local/bin/perfmax.pic
          sudo sed -i '/\[\[ \$1 == "On" \]\]/s//\[\[ \$1 == "On" \]\] || \[\[ \$2 == *"mgba"* \]\]/' /usr/local/bin/perfmax.asc
      fi


    printf "\n Fix some GlideN64 plugin settings \n" | tee -a "$LOG_FILE"
      sed -i "/UseNativeResolutionFactor \=/c\UseNativeResolutionFactor \= 1" /home/ark/.config/mupen64plus/mupen64plus.cfg
      sed -i "/ThreadedVideo \=/c\ThreadedVideo \= True" /home/ark/.config/mupen64plus/mupen64plus.cfg


    printf "\n Fix scummvm ability to change key configuration \n" | tee -a "$LOG_FILE"
      sudo cp -fv /usr/local/bin/ti99keydemon.py /usr/local/bin/scummvmkeydemon.py | tee -a "$LOG_FILE"
      sudo chmod 777 /usr/local/bin/scummvmkeydemon.py
      sudo sed -i 's/ti99sim-sdl/scummvm/' /usr/local/bin/scummvmkeydemon.py


    printf "\n Install and link new SDL 2.0.2800.2 (aka SDL 2.0.28.2) \n" | tee -a "$LOG_FILE"
      sudo mv -f -v /home/ark/sdl2-64/libSDL2-2.0.so.0.2800.2.rotated /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 | tee -a "$LOG_FILE"
      sudo mv -f -v /home/ark/sdl2-32/libSDL2-2.0.so.0.2800.2.rotated /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 | tee -a "$LOG_FILE"
      sudo rm -rfv /home/ark/sdl2-64 | tee -a "$LOG_FILE"
      sudo rm -rfv /home/ark/sdl2-32 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"


    printf "\n Cleanup \n" | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/add_gliden64_to_mupen64plus_cfg.txt | tee -a "$LOG_FILE"
      sudo rm -rf /dev/shm/*


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update08252023"

fi


if [ ! -f "/home/ark/.config/.update09022023" ]; then

	printf "\n Add Sameboy and GearBoy, Update MESS libretro, Show Last Played, Update NesBox Theme \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/09022023/arkosupdate09022023.zip -O /home/ark/arkosupdate09022023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate09022023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate09022023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate09022023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate09022023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


    printf "\n ---CORES--- \n" | tee -a "$LOG_FILE"
    printf "\n Add sameboy v0.15.4 core for GB and GBC \n" | tee -a "$LOG_FILE"
    printf "\n Add GearBoy core for GB and GBC \n" | tee -a "$LOG_FILE"
    printf "\n Update MESS libretro core to v0.250 for Adventure Vision and Bally Astrocade \n" | tee -a "$LOG_FILE"


    printf "\n Ensure proper ownership on folders \n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /opt/
      sudo chown ark:ark /etc/emulationstation/es_systems.cfg
      sudo chown -Rv ark:ark /opt/yabasanshiro
      sudo chown -Rv ark:ark /opt/retroarch
      sudo chown -Rv ark:ark /opt/hypseus-singe
      sudo chown -Rv ark:ark /opt/amiberry
      sudo chmod -v 777 /opt/retroarch/bin/*
      sudo chown -v ark:ark /opt/retroarch/bin/*
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark
      sudo chown -R ark:ark /home/ark/.config/gzdoom/
      sudo chown -Rv ark:ark /home/ark/.config/mupen64plus/
      sudo chmod 755 ~/.config/pulse
      sudo chmod 755 ~/.config/retroarch/retroarch-core-options.cfg
      sudo chmod 755 ~/.config/retroarch/cores/gearboy_libretro.*
      sudo chmod 755 ~/.config/retroarch/cores/sameboy_libretro.*
      sudo chmod 755 ~/.config/retroarch/cores/mess_libretro.*


    if test -z "$(cat /etc/emulationstation/es_systems.cfg | grep -i '<core>gearboy</core>')"
    then
		  sed -i '/<core>tgbdual<\/core>/c\\t\t\t  <core>tgbdual<\/core>\n\t\t\t  <core>gearboy<\/core>' /etc/emulationstation/es_systems.cfg
    fi

    sleep 1

    if test -z "$(cat /etc/emulationstation/es_systems.cfg | grep -i '<core>sameboy</core>')"
    then
		  sed -i '/<core>gearboy<\/core>/c\\t\t\t  <core>gearboy<\/core>\n\t\t\t  <core>sameboy<\/core>' /etc/emulationstation/es_systems.cfg
    fi


    printf "\n Disable the ability for cores to be able to change video modes in retroarch and retroarch32 \n" | tee -a "$LOG_FILE"
      sed -i '/driver_switch_enable \= \"true\"/c\driver_switch_enable \= \"false\"' /home/ark/.config/retroarch32/retroarch.cfg
      sed -i '/driver_switch_enable \= \"true\"/c\driver_switch_enable \= \"false\"' /home/ark/.config/retroarch32/retroarch.cfg.bak
      sed -i '/driver_switch_enable \= \"true\"/c\driver_switch_enable \= \"false\"' /home/ark/.config/retroarch/retroarch.cfg
      sed -i '/driver_switch_enable \= \"true\"/c\driver_switch_enable \= \"false\"' /home/ark/.config/retroarch/retroarch.cfg.bak

    printf "\n Adjust volume in retroarch and retroarch32 \n" | tee -a "$LOG_FILE"
      sed -i '/audio_volume \= \"-4.500000\"/c\audio_volume \= \"6.0\"' /home/ark/.config/retroarch32/retroarch.cfg
      sed -i '/audio_volume \= \"-4.500000\"/c\audio_volume \= \"6.0\"' /home/ark/.config/retroarch32/retroarch.cfg.bak
      sed -i '/audio_volume \= \"0.500000\"/c\audio_volume \= \"6.0\"' /home/ark/.config/retroarch/retroarch.cfg
      sed -i '/audio_volume \= \"0.500000\"/c\audio_volume \= \"6.0\"' /home/ark/.config/retroarch/retroarch.cfg.bak

    printf "\n Set video mode to 480x320 for RG351P and RG351M in retroarch and retroarch32 \n" | tee -a "$LOG_FILE"
      sed -i '/custom_viewport_width \= \"640\"/c\custom_viewport_width \= \"480\"' /home/ark/.config/retroarch32/retroarch.cfg
      sed -i '/custom_viewport_height \= \"480\"/c\custom_viewport_height \= \"320\"' /home/ark/.config/retroarch32/retroarch.cfg
      sed -i '/custom_viewport_width \= \"640\"/c\custom_viewport_width \= \"480\"' /home/ark/.config/retroarch32/retroarch.cfg.bak
      sed -i '/custom_viewport_height \= \"480\"/c\custom_viewport_height \= \"320\"' /home/ark/.config/retroarch32/retroarch.cfg.bak

      sed -i '/custom_viewport_width \= \"640\"/c\custom_viewport_width \= \"480\"' /home/ark/.config/retroarch/retroarch.cfg
      sed -i '/custom_viewport_height \= \"480\"/c\custom_viewport_height \= \"320\"' /home/ark/.config/retroarch/retroarch.cfg
      sed -i '/custom_viewport_width \= \"640\"/c\custom_viewport_width \= \"480\"' /home/ark/.config/retroarch/retroarch.cfg.bak
      sed -i '/custom_viewport_height \= \"480\"/c\custom_viewport_height \= \"320\"' /home/ark/.config/retroarch/retroarch.cfg.bak


    printf "\n Cleanup \n" | tee -a "$LOG_FILE"
    printf "\n The RG351P and RG351M ArkOS image only has 6GB in the system partition \n" | tee -a "$LOG_FILE"
    printf "\n Any additional space that can be reclaimed is desirable at this point \n" | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/add_*.txt | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/update_*.txt | tee -a "$LOG_FILE"
      sudo rm -rf /themes | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/*.zip | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/*.so | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/*.info | tee -a "$LOG_FILE"
      sudo rm -v /bin/emulationstation/*.bak | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
  sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update09022023"

fi


if [ ! -f "/home/ark/.config/.update09072023" ]; then

	printf "\n Update EmulationStation \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/09072023/arkosupdate09072023.zip -O /home/ark/arkosupdate09072023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate09072023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate09072023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate09072023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate09072023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi
	

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
    sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
    sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
    sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
    sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update09072023"

fi


if [ ! -f "/home/ark/.config/.update09082023" ]; then

	printf "\n Update ScummVM to v2.8.0, Add Sega Pico \n" | tee -a "$LOG_FILE"
	sudo rm -rf /dev/shm/*
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/09082023/arkosupdate09082023a.zip -O /home/ark/arkosupdate09082023a.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate09082023a.zip | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/09082023/arkosupdate09082023b.zip -O /home/ark/arkosupdate09082023b.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate09082023b.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate09082023a.zip" ] && [ -f "/home/ark/arkosupdate09082023b.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate09082023a.zip -d / | tee -a "$LOG_FILE"
		sudo unzip -X -o /home/ark/arkosupdate09082023b.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate09082023a.zip | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate09082023b.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

    printf "\n Cleanup \n" | tee -a "$LOG_FILE"
    printf "\n The RG351P and RG351M ArkOS image only has 6GB in the system partition \n" | tee -a "$LOG_FILE"
    printf "\n Any additional space that can be reclaimed is desirable at this point \n" | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/add_*.txt | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/update_*.txt | tee -a "$LOG_FILE"
      sudo rm -rf /themes | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/*.zip | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/*.so | tee -a "$LOG_FILE"
      sudo rm -v /home/ark/*.info | tee -a "$LOG_FILE"
      sudo rm -v /bin/emulationstation/*.bak | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update09082023"

fi


if [ ! -f "/home/ark/.config/.update11052023" ]; then

	printf "\n Update Retroarch to v1.16.0, update PPSSPP to v1.16.6, update flycast and reicast Dreamcast cores, fix inability to quit Fake08 \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/11052023/arkosupdate11052023.zip -O /home/ark/arkosupdate11052023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate11052023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate11052023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate11052023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate11052023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update11052023"

fi


if [ ! -f "/home/ark/.config/.update11222023" ]; then

	printf "\n Add thomson and wasm4, Update NesBox Theme \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/11222023/arkosupdate11222023.zip -O /home/ark/arkosupdate11222023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate11222023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate11222023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate11222023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate11222023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update11222023"

fi


if [ ! -f "/home/ark/.config/.update12092023" ]; then

	printf "\n Update PortMaster, Add script in Advanced Options to fix Start+Select not quitting on RG351P+M \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/12092023/arkosupdate12092023.zip -O /home/ark/arkosupdate12092023.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate12092023.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate12092023.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate12092023.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate12092023.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi


    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update12092023"

fi


if [ ! -f "/home/ark/.config/.update01052024" ]; then

	printf "\n Update GZDoom and add support for .doom files, Add fix for asoundrc (add /dev/asound.conf), Add script in Advanced Options to repair asoundrc \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/01052024/arkosupdate01052024.zip -O /home/ark/arkosupdate01052024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate01052024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate01052024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate01052024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate01052024.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/ 

      sudo chmod 777 /usr/local/bin/doom.sh
      sudo chmod 755 /usr/lib/aarch64-linux-gnu/libzmusic.so.1

      sudo rm -f /home/ark/.config/gzdoom/gzdoom.ini.351mp
      sudo rm -f /home/ark/.config/gzdoom/gzdoom.ini.351v
      sudo rm -f /home/ark/.config/gzdoom/gzdoom.ini.chi

      sudo chmod 755 /opt/lzdoom/*
      sudo chmod 777 -R /home/ark/.config/lzdoom/lzdoom.ini

      sudo chmod 755 /opt/gzdoom/*
      sudo chmod 777 -R /home/ark/.config/gzdoom/gzdoom.ini

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update01052024"

fi


if [ ! -f "/home/ark/.config/.update01292024" ]; then

	printf "\n Install psmisc to add killall command for updated gptokeyb \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/01292024/arkosupdate01292024.zip -O /home/ark/arkosupdate01292024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate01292024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate01292024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate01292024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate01292024.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

      sudo dpkg -i ~/psmisc_23.2-1_arm64.deb
      sleep 0.3
      sudo rm -f ~/psmisc_23.2-1_arm64.deb

      sudo rm -f "/opt/system/Advanced/Fix Start+Select Not Quitting.sh"

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update01292024"

fi


if [ ! -f "/home/ark/.config/.update02262024" ]; then

	printf "\n Fix inability to change controls in gzdoom and lzdoom \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/02262024/arkosupdate02262024.zip -O /home/ark/arkosupdate02262024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate02262024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate02262024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate02262024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate02262024.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update02262024"

fi


if [ ! -f "/home/ark/.config/.update03202024" ]; then

	printf "\n RetroArch v1.17.0, PPSSPP v1.17.1, Critical PortMaster Update, RetroArch Filters, Add Palm mu_libretro core, update 64-Bit uae4arm_libretro, add stark_shaders for Scummvm and files for Scummvm libretro, update NES-Box, add XRoar Tandy coco emu, add Watara SuperVision, add videopac, add and fix file extensions for various systems, set perfmax to GOVERNOR, updated USB DAC control script\n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03202024/arkosupdate03202024.zip -O /home/ark/arkosupdate03202024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03202024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03202024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03202024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03202024.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

        # Added ZIP and IPF support for Amiga
        # Added CHD support for PPSSPP, Sega32x, and PSPMinis
        # Added 7Z support for MegaDuck, PokemonMini, Atari800, Atari2600, Atari5200, Atari Lynx, PCEngine, Turbografx16, NES, NESHacks, NDS, ColecoVision, Vectrex, VirtualBoy, C128, Vic20, MSX and MSX2
        # Added D64, N64DD, and NDD support for N64DD
        # Fixed ZIP file extension support for VirtualBoy and MSX2
        # Added D2M, D4M, TCRT, and VFL file extension support for C16
        # Added BIN, CMD, D2M, D4M, D6Z, D7Z, D80, D82, D8Z, G41, G4Z, G64, G6Z, GZ, M3U, NBZ, P00, TCRT, VFL, X64, and X6Z file extension suport for C64
        # Added D2M, D4M, TCRT, and VFL file extension support for C128
        # Added D2M, D4M, ROM, TCRT, and VFL file extension support for Vic20
        # Added ZIP file extension support for EASYRPG

      # Use left thumbstick for mouse for Palm Mu Libretro core (Palm OS)
      if test -z "$(cat /home/ark/.config/retroarch/retroarch-core-options.cfg | grep 'palm_emu_use_joystick_as_mouse' | tr -d '\0')"
      then
        printf "\nEnable the left joystick as mouse by default for Palm OS\n" | tee -a "$LOG_FILE"
        sed -i -e '$a\\palm_emu_use_joystick_as_mouse \= \"enabled\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\palm_emu_use_joystick_as_mouse \= \"enabled\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      fi
      
        # Stick-drift was occurring in the Palm emulator and doesn't have its own deadzone setting.
        # The below sets a marginal ten percent deadzone globally to eliminate drift.
        sed -i '/input_analog_deadzone \= \"0.000000\"/c\input_analog_deadzone \= \"0.100000\"' /home/ark/.config/retroarch/retroarch.cfg
        sed -i '/input_analog_deadzone \= \"0.000000\"/c\input_analog_deadzone \= \"0.100000\"' /home/ark/.config/retroarch/retroarch.cfg.bak
      
        # Assess launch image configuration and correct if necessary
        if [ -f "/opt/system/Switch Launchimage to jpg.sh" ]; then
          sudo cp -fv /usr/local/bin/perfmax.asc /usr/local/bin/perfmax | tee -a "$LOG_FILE"
        fi
      
        # Remove very old backup of PPSSPPDL
        sudo rm -f /opt/ppsspp/PPSSPPSDL.update1.bak
      
      ### PortMaster Critical Update
      # Define the path to the file
      pm_version_file="/opt/system/Tools/PortMaster/version"
      
      if [ ! -e "$pm_version_file" ] || ! grep -q "^2024-03-" "$pm_version_file"; then
        sudo chmod +x $HOME/Install.PortMaster.sh
        touch $HOME/no_es_restart
        $HOME/Install.PortMaster.sh
      fi
      # Delete the installer
      rm -f $HOME/Install.PortMaster.sh


    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03202024"

fi


if [ ! -f "/home/ark/.config/.update03212024" ]; then

	printf "\n Update gbz35_mod theme \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03212024/arkosupdate03212024.zip -O /home/ark/arkosupdate03212024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03212024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03212024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03212024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03212024.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03212024"

fi


if [ ! -f "/home/ark/.config/.update03232024" ]; then

	printf "\n Add Apple II emulators linapple and shamusworld \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03232024/arkosupdate03232024.zip -O /home/ark/arkosupdate03232024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03232024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03232024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03232024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03232024.zip | tee -a "$LOG_FILE"
	else 
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo rm -v /home/ark/add_apple2.txt

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03232024"

fi


if [ ! -f "/home/ark/.config/.update03282024" ]; then

	printf "\n Add AppleWin for Linux Apple II emulator (with help from christian_haitian) \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03282024/arkosupdate03282024.zip -O /home/ark/arkosupdate03282024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03282024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03282024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03282024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03282024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo rm -v /home/ark/add_apple2.txt

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03282024"

fi


if [ ! -f "/home/ark/.config/.update03292024" ]; then

	printf "\n Add hatarib_libretro core and set as default core for Atari ST, update apple2 script to default detection of linapple conf files in apple2/conf folder when using an .apple2 file \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03292024/arkosupdate03292024.zip -O /home/ark/arkosupdate03292024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03292024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03292024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03292024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03292024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      # Set default options for hatarib_libretro core (Atari ST)
      if test -z "$(cat /home/ark/.config/retroarch/retroarch-core-options.cfg | grep 'hatarib_tos' | tr -d '\0')"
      then
        printf "\n Assign presets for hatarib_libretro Atari ST core \n" | tee -a "$LOG_FILE"
        sed -i -e '$a\\hatarib_borders \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_borders \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      #  Note: Set 'select' to "25" to set as Joystick/Mouse Toggle
        sed -i -e '$a\\hatarib_pad1_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_pad1_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_pad2_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_pad2_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_pad3_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_pad3_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_pad4_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_pad4_select \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_pause_osk \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_pause_osk \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_samplerate \= \"44100\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_samplerate \= \"44100\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_statusbar \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_statusbar \= \"0\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak

        sed -i -e '$a\\hatarib_tos \= \"<etos192us>\"' /home/ark/.config/retroarch/retroarch-core-options.cfg
        sed -i -e '$a\\hatarib_tos \= \"<etos192us>\"' /home/ark/.config/retroarch/retroarch-core-options.cfg.bak
      fi

      sudo rm -v /home/ark/add_apple2.txt

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03292024"

fi


if [ ! -f "/home/ark/.config/.update03302024" ]; then

	printf "\n Update RetroArch to v1.18.0, update apple2 script, add DoubleCherryGB core for gameboy, add stella core for Atari 2600, add geolith core and .neo extension for Neo Geo, update XRoar to 1.5.5 (Tandy CoCO) \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/03302024/arkosupdate03302024.zip -O /home/ark/arkosupdate03302024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate03302024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate03302024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate03302024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate03302024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2800.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2800.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update03302024"

fi


if [ ! -f "/home/ark/.config/.update06192024" ]; then

	printf "\nUpdate RetroArch v1.18.0, Update SDl2 to 2.30.3, add script in tools to select SDL2 version used for Ports, Update PortMaster if older than 05-14-2024 stable, add aarch64 libzip.so.4, add aarch64 libvpx.so.5, add aarch64 libiconv.so.2, Update amiga to allow custom config with .user extension and launch amiberry rom-less with .standalone extension \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/06192024/arkosupdate06192024.zip -O /home/ark/arkosupdate06192024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate06192024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate06192024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate06192024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate06192024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

      sudo chmod 777 /opt/inttools/gptokeyb

      ### PortMaster Update if older than 2024.05.14-1028
      # Define the path to the file
      pm_version_file="/opt/system/Tools/PortMaster/version"
      
      if [ ! -e "$pm_version_file" ] || ! grep -q "^2024-05-" "$pm_version_file"; then
        sudo chmod +x $HOME/Install.PortMaster.sh
        touch $HOME/no_es_restart
        $HOME/Install.PortMaster.sh
      fi
      # Delete the installer
      rm -f $HOME/Install.PortMaster.sh

    printf "\n Install and link new SDL 2.0.3000.3 \n" | tee -a "$LOG_FILE"
      sudo mv -f -v /home/ark/sdl2-64/libSDL2-2.0.so.0.3000.3.rotated /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.3 | tee -a "$LOG_FILE"
      sudo mv -f -v /home/ark/sdl2-32/libSDL2-2.0.so.0.3000.3.rotated /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.3 | tee -a "$LOG_FILE"
      sudo rm -rfv /home/ark/sdl2-64 | tee -a "$LOG_FILE"
      sudo rm -rfv /home/ark/sdl2-32 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.3 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.3 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"


	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	#sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming & Slayer366" /usr/share/plymouth/themes/text.plymouth

	touch "/home/ark/.config/.update06192024"

fi


if [ ! -f "/home/ark/.config/.update07052024" ]; then

	printf "\nUpdate and fix Change Ports SDL script specifically to accommodate ArkOS on RG351P and RG351M \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/07052024/arkosupdate07052024.zip -O /home/ark/arkosupdate07052024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate07052024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate07052024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate07052024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate07052024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

      sudo chmod 777 /opt/inttools/gptokeyb

    printf "\nEnsure 64bit and 32bit SDL2 are still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.3 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.3 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	touch "/home/ark/.config/.update07052024"

fi


if [ ! -f "/home/ark/.config/.update09082024" ]; then

	printf "\nInstall and Update Python and Python utilities (already present in July 5th image), Install dos2unix \n" | tee -a "$LOG_FILE"

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

      sudo chmod 777 /opt/inttools/gptokeyb
      sudo chmod 666 /opt/inttools/gamecontrollerdb.txt
      sudo chmod 666 /opt/inttools/keys.gptk
      sudo chmod 666 /opt/inttools/keys2.gptk

      sudo apt update
      sleep 2
      sudo apt install -y freeglut3 libarchive-zip-perl python3
      sleep 2
      sudo apt -y install -t eoan python3-urwid
      sleep 2
      sudo apt install -y libserialport0 libportmidi0 python3-pip python3-pil p7zip-full htop dos2unix
      sleep 2

    printf "\nEnsure 64bit and 32bit SDL2 are still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.3 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.3 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	touch "/home/ark/.config/.update09082024"

fi


if [ ! -f "/home/ark/.config/.update11052024" ]; then

	printf "\nUpdate RetroArch v1.19.1, Update SDl2 to 2.30.7, update xroar Tandy CoCo emulator, update script in tools to select SDL2 ver, Update PortMaster if older than 11-05-2024 stable \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/11052024/arkosupdate11052024.zip -O /home/ark/arkosupdate11052024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate11052024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate11052024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate11052024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate11052024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

      ### PortMaster Update if older than 2024.11.05-1445
      if [ ! -f /opt/system/Tools/PortMaster/xmlstarlet ]; then
        sudo chmod +x $HOME/Install.PortMaster.sh
        touch $HOME/no_es_restart
        $HOME/Install.PortMaster.sh
      fi
      # Delete the installer
      sleep 1
      rm -f $HOME/Install.PortMaster.sh

    printf "\n Install and link new SDL 2.0.3000.7 \n" | tee -a "$LOG_FILE"
      sudo mv -f -v /home/ark/sdl2-64/libSDL2-2.0.so.0.3000.7.rotated /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.7 | tee -a "$LOG_FILE"
      sudo mv -f -v /home/ark/sdl2-32/libSDL2-2.0.so.0.3000.7.rotated /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.7 | tee -a "$LOG_FILE"
      sudo rm -rfv /home/ark/sdl2-64 | tee -a "$LOG_FILE"
      sudo rm -rfv /home/ark/sdl2-32 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.7 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.7 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	touch "/home/ark/.config/.update11052024"

fi


if [ ! -f "/home/ark/.config/.update11062024" ]; then

	printf "\nSet RetroArch screenshots to save in content directory \n" | tee -a "$LOG_FILE"

      sed -i '/screenshots_in_content_dir \= \"false\"/c\screenshots_in_content_dir \= \"true\"' /home/ark/.config/retroarch/retroarch.cfg
      sed -i '/screenshots_in_content_dir \= \"false\"/c\screenshots_in_content_dir \= \"true\"' /home/ark/.config/retroarch/retroarch.cfg.bak
      sed -i '/screenshots_in_content_dir \= \"false\"/c\screenshots_in_content_dir \= \"true\"' /home/ark/.config/retroarch32/retroarch.cfg
      sed -i '/screenshots_in_content_dir \= \"false\"/c\screenshots_in_content_dir \= \"true\"' /home/ark/.config/retroarch32/retroarch.cfg.bak

    printf "\nEnsure 64bit and 32bit SDL2 are still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.7 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.7 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	touch "/home/ark/.config/.update11062024"

fi


if [ ! -f "/home/ark/.config/.update11072024" ]; then

	printf "\nFix mounting method and permissions for exFAT partition in fstab \n" | tee -a "$LOG_FILE"
	sudo wget --no-check-certificate https://github.com/wummle/arkos/raw/main/11072024/arkosupdate11072024.zip -O /home/ark/arkosupdate11072024.zip -a "$LOG_FILE" || rm -f /home/ark/arkosupdate11072024.zip | tee -a "$LOG_FILE"
	if [ -f "/home/ark/arkosupdate11072024.zip" ]; then
		sudo unzip -X -o /home/ark/arkosupdate11072024.zip -d / | tee -a "$LOG_FILE"
		sudo rm -v /home/ark/arkosupdate11072024.zip | tee -a "$LOG_FILE"
	else
		printf "\nThe update couldn't complete because the package did not download correctly.\nPlease retry the update again." | tee -a "$LOG_FILE"
		sleep 3
		echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
		exit 1
	fi

      sudo chown -R ark:ark /opt/

    printf "\nMake sure permissions for the ark home directory are set to 755\n" | tee -a "$LOG_FILE"
      sudo chown -R ark:ark /home/ark
      sudo chmod -R 755 /home/ark

    printf "\nEnsure 64bit and 32bit SDL2 are still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.7 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.7 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	touch "/home/ark/.config/.update11072024"

fi


if [ ! -f "$UPDATE_DONE-1" ]; then


	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.3000.7 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so | tee -a "$LOG_FILE"
      sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.3000.7 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe & Slayer366                              ($UPDATE_DATE)" /usr/share/plymouth/themes/text.plymouth

	touch "$UPDATE_DONE"
	rm -v -- "$0" | tee -a "$LOG_FILE"
	printf "\033c" >> /dev/tty1
	msgbox "Updates have been completed.  System will now restart after you hit the A button to continue.  If the system doesn't restart after pressing A, just restart the system manually."
	echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
	sudo reboot
	exit 187

fi
