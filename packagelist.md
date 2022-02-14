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

## Command line utilities
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
- bluez (enable bluetooth)
- bluez-utils
- cups
- bc
- gnome-calculator or genius
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
- acpi_call
- acpid (enable acpid)
- openbsd-netcat
- openssh (enable sshd)

## Audio
- pipewire
- pipewire-pulse
- pipewire-jack
- pipewire-alsa 
- alsa-utils 
- wireplumber
- (helvum)
- (pavucontrol)

## Applications 
- firefox
- youtube-dl
- discord
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

## Arch User Repository
- paru
- google-chrome-stable
- megasync-bin
- zoom-bin 
- tor-browser

---
## Enable services
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable tlp 
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable firewalld
systemctl enable acpid
systemctl enable update.timer ?
systemctl enable ly.service ? 
systemctl enable pipewire-pulse.service




