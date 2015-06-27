# Get a swap file sorted out
# 8 GB
sudo dd if=/dev/zero of=/swapfile bs=1024 count=8388608
sudo mkswap /swapfile
sudo swapon /swapfile
# check that it worked
swapon -s


sudo apt-get install firefox
sudo apt-get install chromium-browser
sudo apt-get install vlc
sudo apt-get install gimp
sudo apt-get install glipper
sudo apt-get install git
sudo apt-get install gedit
sudo apt-get install maximus
sudo apt-get install openvpn
sudo apt-get install network-manager-openvpn network-manager-openvpn-gnome
sudo apt-get install mplayer
sudo apt-get install unetbootin
sudo apt-get install gparted
sudo apt-get install whois
sudo apt-get install redshift
sudo apt-get install redshift-gtk
sudo apt-get install aptitude
sudo apt-get install terminator

# Fixing the Macbook Pro touchpad

synclient TapAndDragGesture=0
synclient PalmDetect=1
synclient PalmMinWidth=30
# this is the pressure setting for palm detection, which shouldn't really be necessary, but
# without it the palm detection kicks in for fingers, no matter how large the PalmMinWidth is set
synclient PalmMinZ=300

# Make the Files application not stupid
gsettings set org.pantheon.files.preferences single-click false


# Zip file support
sudo apt-get install unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpacko arj cabextract file-roller

# DVD support
sudo apt-get install libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh


# Fixing bug where cursor gets corrupted after drag and drop
# https://bugs.launchpad.net/ubuntu/+source/unity/+bug/1390625/comments/56
sudo touch /usr/share/X11/xorg.conf.d/20-intel.conf
sudo nano /usr/share/X11/xorg.conf.d/20-intel.conf
# Paste the following into the file and save it:
#Section "Device"
#    Identifier "Intel Graphics"
#    Driver "intel"
#    Option "AccelMethod" "uxa"
#EndSection
# Restart the machine

# Fixing a bug with screen blanking after waking from sleep
# https://www.reddit.com/r/elementaryos/comments/34dm4t/fixrestart_corrupted_mouse_after_dragging/
sudo nano /etc/default/acpi-support
# Search for "POST_VIDEO=true" and change it to "POST_VIDEO=false" .


##################################### OTHERS ##########################################

# Add redshift to startup items

# Add this to crontab:
# *       *       *       *       *       ~/.setup/reapply_fixes.sh


# ffmpeg (removed from Ubuntu in 14.04, but coming back in 15.)
# http://www.webupd8.org/2014/11/ffmpeg-returns-to-official-ubuntu.html
# Add this to software sources in Software Center
# ppa:kirillshkrogalev/ffmpeg-next
# Then run (never actually got this to work - gstreamer deprecated?)
# sudo apt-get install gsfonts-x11 libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 libjpeg-progs flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev libquicktime2 gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-sdl gstreamer0.10-plugins-bad-multiverse gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly totem-plugins-extra gstreamer-dbus-media-service gstreamer-tools ubuntu-restricted-extras

# Flash player?
# sudo apt-get install flashplugin-installer
