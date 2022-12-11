#!/bin/bash
clear

UPDATE_DATE="12102022-1"
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

	printf "\nupdate retroarch\n" | tee -a "$LOG_FILE"
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

	printf "\nupdate extfat drivers\n" | tee -a "$LOG_FILE"
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

	printf "\nupdate extfat drivers\n" | tee -a "$LOG_FILE"
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

	printf "\nupdate extfat drivers\n" | tee -a "$LOG_FILE"
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
    sudo chmod ugo+rwx /usr/lib/aarch64-linux-gnu/libSDL2_gfx-1.0.so.0
    sudo chmod ugo+rwx /usr/lib/aarch64-linux-gnu/libzmusic.so.1
    sudo chmod ugo+rwx /usr/lib/aarch64-linux-gnu/libzmq.so.5.2.2
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


if [ ! -f "$UPDATE_DONE" ]; then

	

	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.18.2 /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.18.2 /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"

	printf "\nUpdate boot text to reflect final current version of ArkOS for the 351 P/M \n" | tee -a "$LOG_FILE"
	sudo sed -i "/title\=/c\title\=ArkOS 351P/M wuMMLe gaming" /usr/share/plymouth/themes/text.plymouth
   
	touch "$UPDATE_DONE"
	rm -v -- "$0" | tee -a "$LOG_FILE"
	printf "\033c" >> /dev/tty1
	msgbox "Updates have been completed.  System will now restart after you hit the A button to continue.  If the system doesn't restart after pressing A, just restart the system manually."
	echo $c_brightness > /sys/devices/platform/backlight/backlight/backlight/brightness
	sudo reboot
	exit 187	
fi