<h2 align="center"> Changelogs</h2>


## what is the new in the new release v `6.0.3`

- update `rofi` menus
- update `polybar` themes
- update `bspwm` themes
- add more `picom` config
- add `bspmonitors` script to setup all connected external monitors
- add `exodia.conf` config file for `bspwm` to load background, theme, icons, etc...

## how to configure `exodia.conf`
> **_`exodia.conf`:_** 
> 
> ** this config file contains the configuration of `bspwm` to load on startup 
> allow users to change `backgrounds`, `polybar` themes, `icons`, etc... easily.**

- Themes Setting: 
  - change the background by changing the value of the background (eg `background = img.png` ), same as for the rest of the setting 
  - Backgrounds must be located in `/usr/share/backgrounds`
  - Themes must be located in `/usr/share/themes`
  - Icons/Cursors must be located in `/usr/share/icons`
  - color-scheme/polybar `~/.config/bspwm`
  - change-betterlockscreen for changing the Background for `betterlockscreen` when you change the theme set it ti `true` to enable it

```conf
# Themes Setting #
background = Islamic_warrior_9.jpg
color-scheme = IslamicWarrior
theme = Tokyonight-Dark-BL
icons = neon-icon
cursor = ArchTrix
polybar = IslamicWarrior
change-betterlockscreen = false
```
- Configurations, Appearance and Other Setting: 
  - change the picom by changing the value of the picom (eg `picom = animation.conf` ), same as for the rest of the setting 
  - picom must be located in `~/.config/bspwm/picom`
  - keybinding must be located in `~/.config/bspwm/keybinding`
  - `multi-bar-monitors` for launching `polybar` in all connected monitors (to disable set to `false` to open `polybar` in primary Monitor ONLY)
  - `keyboard-layouts` to configure your keyboard layout, see [**`All Layouts`**](https://en.wikipedia.org/wiki/ISO_3166-1#Officially_assigned_code_elements)

```conf
# BSPWM Configurations, Appearance and Other Setting #
picom = shadow-animation.conf
keybinding = sxhkdrc
multi-bar-monitors = true
keyboard-layouts = us,ar
```

- Exoida OS Setting: 
  - `exoida-assistant-auto-start` to open `exoida-assistant` App on startup (to disable set to `false`).
  - `auto-update` for auto-updating bspwm config from official exodia repos, as the new config is located in(after update/install) `/etc/skel/.config/bspwm` and you need to copy manually to `~/.config/bspwm` to get the new configuration but here if you set to `true` it will update automatically and take a backup for the old config if you don't need the new config (if you have your own config and don't want to override on it) set to `false`

```conf
# Exoida OS Setting #
exoida-assistant-auto-start = true
auto-update = true
```

FINALLY, here's the default config file

```conf
#####################################
#                                   #
#  @author      : 00xWolf           #
#    GitHub    : @mmsaeed509       #
#    Developer : Mahmoud Mohamed   #
#  﫥  Copyright : Exodia OS         #
#                                   #
#####################################

# Themes Setting #
background = Islamic_warrior_9.jpg
color-scheme = IslamicWarrior
theme = Tokyonight-Dark-BL
icons = neon-icon
cursor = ArchTrix
polybar = IslamicWarrior
change-betterlockscreen = false

# BSPWM Configurations, Appearance and Other Setting #
picom = shadow-animation.conf
keybinding = sxhkdrc
multi-bar-monitors = true
keyboard-layouts = us,ar

bsp-border-width = 2
bsp-window-gap = 10
bsp-split-ratio = 0.50
bsp-borderless-monocle = true
bsp-gapless-monocle = true
bsp-paddingless-monocle = true
bsp-single-monocle = false
bsp-focus-follows-pointer = true
bsp-presel-feedback = true

# Predator Edition Setting #
RGB-keyboard = IslamicWarrior

# Exoida OS Setting #
exoida-assistant-auto-start = true
auto-update = true
```
