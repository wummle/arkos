#!/bin/bash
clear

UPDATE_DATE="12202022-1"
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

	printf "\nUpdate PPSSPP to 1.14 and RetroArch to 1.14.0\n" | tee -a "$LOG_FILE"
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
    sudo chmod ugo+rwx /usr/lib/aarch64-linux-gnu/libzmusic.so.1
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


if [ ! -f "$UPDATE_DONE" ]; then



	printf "\nEnsure 64bit and 32bit sdl2 is still properly linked\n" | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2.so /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/aarch64-linux-gnu/libSDL2-2.0.so.0.2600.2 /usr/lib/aarch64-linux-gnu/libSDL2.so | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2.so /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0 | tee -a "$LOG_FILE"
	sudo ln -sfv /usr/lib/arm-linux-gnueabihf/libSDL2-2.0.so.0.2600.2 /usr/lib/arm-linux-gnueabihf/libSDL2.so | tee -a "$LOG_FILE"

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