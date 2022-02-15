# Pacstrap
- base
- linux
- linux-firmware
- intel-ucode
- neovim
- git
- base-devel

# Pacman

## Boot
- grub
- efibootmgr
- os-prober

## Networking
- networkmanager (enable NetworkManager)
- network-manager-applet
- wpa_supplicant
- dialog
- (dhclient, dhcpd, dnsmasq)
- nftables
- ipset

## Window manager related
- wayland
- wayland-protocols
- wlroots
- xorg-xwayland
- sway
- swaylock 
- swayidle
- swaybg
- kitty (maybe also try foot)
- wl-clipboard
- wf-recorder
- slurp
- grim 
- waybar
- mako
- wl-sunset
- brightnessctl
- ly (login manager)
- wofi or rofi
- dmenu or bemenu
- (wev)
- (wob //aur)
- kanshi

## Shell 
- zsh 
- zsh-completion
- zsh-autosuggestions

## Command line utilities
- polkit
- pkgstats
- mesa-utils
- wget
- usbutils
- tlp (enable tlp) 
- gnupg
- mlocate (update.timer ?)
- neofetch
- unrar
- unzip
- p7zip
- ranger
- bat
- rg (ripgrep)
- fd 
- fzf
- exa
- htop
- firewalld (firewalld.service)
- bc
- units (command line unit converter, check it out)
- termdown
- mtools 
- dosfstools
- avahi (enable avahi-daemon)
- nss-mdns
- xdg-user-dirs
- xdg-utils
- xdg-desktop-portal
- xdg-desktop-portal-wlr
- gvfs (gvfs-smb?)
- ntfs-3g
- nfs-utils
- inetutils
- bash-completion
- acpi
- acpid (enable acpid) (old method of power management)
- openbsd-netcat
- openssh (enable sshd)
- udisks2
- udiskie (automounting drives)
- etc-update (for .pacnew merging)
- pacman-contrib

## Audio, Bluetooth, Printing
- pipewire
- pipewire-pulse
- pipewire-jack
- pipewire-alsa 
- alsa-utils 
- wireplumber
- (helvum)
- (pavucontrol)
- bluez (enable bluetooth)
- bluez-utils
- cups

## Applications 
- firefox
- youtube-dl
- discord (maybe try discord_arch_electron from the aur)
- reflector (reflector.timer)
- zathura zathura-mupdf
- evince
- nautilus or thunar
- remmina
- mpv 
- cheese
- guvcview
- deja-dup
- bitwarden 
- gnome-disk-utility
- baobab
- (bleachbit)
- libreoffice-fresh (-gr?)
- pandoc (learn how to use)
- texlive-core and friends
- texmaker ?, qtikz or tikzit(aur)
- geogebra
- gnome-calculator or genius
- gnome-clocks
- cmatrix (hollywood terminal)

## Arch User Repository
- paru
- google-chrome-stable
- megasync-bin
- zoom-bin 
- tor-browser
- nvim-packer-git
- (atool for file decompression)
- ventoy-bin (for multiboot usb)
- pandoc-bin (check how pandoc works)

## Font packages
- ttf-cascadia-code
- nerd font
- copy microsoft fonts from mega to .local/share/fonts

---
# Enable services
systemctl enable NetworkManager \ 
systemctl enable bluetooth      \
systemctl enable cups.service   \
systemctl enable sshd           \
systemctl enable avahi-daemon   \
systemctl enable tlp.service    \
systemctl enable reflector.timer\
systemctl enable fstrim.timer   \
systemctl enable firewalld      \
(old method) systemctl enable acpid          \
systemctl enable update.timer ? \
systemctl enable ly.service ?   \
systemctl enable pipewire-pulse.service \
systemctl enable systemd-timesyncd.service \

