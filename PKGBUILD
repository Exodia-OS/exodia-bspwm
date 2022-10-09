#
# Maintainer: Mahmoud Mohamed (Ozil) <mmsaeed509@gmail.com> , <https://github.com/mmsaeed509>
#

pkgname=exodia-bspwm
pkgver=3.0
pkgrel=9
pkgdesc="BSPWM Config For Exodia OS"
arch=('any')
url="https://github.com/Exodia-OS/exodia-bspwm"
license=('GPL3')
depends=('bspwm' 'sxhkd' 'alacritty' 'thunar' 'geany'
		'rofi' 'polybar' 'dunst' 'mpd' 'mpc' 'maim' 
		'xclip' 'viewnior' 'feh' 'ksuperkey' 'betterlockscreen'
		'xfce4-power-manager' 'xsettingsd' 'xorg-xsetroot'
		'wmname' 'xsensors' 'stacer' 'powershell-preview-bin'
		'exodia-oh-my-posh'
)

prepare() {

	cp -af ../config/. ${srcdir}

}

package() {

	local config_dir=${pkgdir}/etc/skel/.config
	local bspwm_dir=${config_dir}/bspwm
	local dunst_dir=${config_dir}/dunst
	local sxhkd_dir=${config_dir}/sxhkd

	mkdir -p "$config_dir" "$bspwm_dir" "$dunst_dir" "$sxhkd_dir"

	cp -r ${srcdir}/*	"$config_dir"

	chmod +x "$bspwm_dir"/bin/*
	chmod +x "$bspwm_dir"/rofi/bin/*

	install -Dm 755 ${srcdir}/bspwm/bspwmrc   			"$bspwm_dir"/bspwmrc
	install -Dm 644 ${srcdir}/bspwm/picom.conf   		"$bspwm_dir"/picom.conf
	install -Dm 644 ${srcdir}/dunst/dunstrc   			"$config_dir"/dunst/dunstrc
	install -Dm 644 ${srcdir}/sxhkd/sxhkdrc        		"$config_dir"/sxhkd/sxhkdrc
	
}
