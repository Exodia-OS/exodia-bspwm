<h2 align="center"> Changelogs</h2>


## what is the new in the new release v `7.1.3`

- new structure for `exodia-bspwm`, that allows you to create your own theme easily
- update `rofi` menus
- update `polybar` themes
- update `bspwm` themes
- add more `picom` config
- add `bspmonitors` script to setup all connected external monitors
- add `exodia.conf` config file for `bspwm` to load background, theme, icons, etc...

<details>

   <summary><h2> How to configure exodia.conf </h2></summary>

  > **_`exodia.conf`:_** 
> 
> ** this config file contains the configuration of `bspwm` to load on startup 
> allow users to change `backgrounds`, `polybar` themes, `icons`, etc... easily.**

- Themes Setting: 
  - change the background by changing the value of the background (eg `background = path/to/img.png` ), same as for the rest of the setting 
  - Themes must be located in `/usr/share/themes`
  - Icons/Cursors must be located in `/usr/share/icons`
  - color-scheme/polybar `~/.config/bspwm`
  - change-betterlockscreen for changing the Background for `betterlockscreen` when you change the theme set it ti `true` to enable it

```conf
# Themes Setting #
background = /usr/share/backgrounds/Islamic_warrior_9.jpg
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

  > **_`If you want to change a specific theme config`:_** 
> 
- go to `~/.config/bspwm/themes/<Target Theme>` 
- edit `theme.conf` file

### e.g `~/.config/bspwm/themes/VALORANT/theme.conf`

```conf
#####################################
#                                   #
#  @author      : 00xWolf           #
#    GitHub    : @mmsaeed509       #
#    Developer : Mahmoud Mohamed   #
#  﫥  Copyright : Exodia OS         #
#                                   #
#####################################

background = full-path/to/the/background.png
theme = Tokyonight-Dark-B
icons = Red-Black
cursor = Rage-Gothic
RGB-keyboard = RedJungles
picom = animation.conf
keybinding = sxhkdrc

bsp-border-width = 2
bsp-window-gap = 10
bsp-split-ratio = 0.50
bsp-borderless-monocle = true
bsp-gapless-monocle = true
bsp-paddingless-monocle = true
bsp-single-monocle = false
bsp-focus-follows-pointer = true
bsp-presel-feedback = true
```

FINALLY, here's the default config file

```conf
#####################################
#                                   #
#  @author      : 00xWolf           #
#    GitHub    : @mmsaeed509       #
#    Developer : Mahmoud Mohamed   #
#  﫥  Copyright : Exodia OS        #
#                                   #
#####################################

# Themes Setting #
exodiaTheme =  Islamic Knights
background = /usr/share/backgrounds/IslamicKnights.jpg
color-scheme =  Islamic Knights
theme = Tokyonight-Dark-BL
icons = Hack
cursor = ArchTrix
polybar =  Islamic Knights
change-betterlockscreen = false

# BSPWM Configurations, Appearance and Other Setting #
picom = default.conf
keybinding = sxhkdrc
multi-bar-monitors = false
keyboard-layouts = us

bsp-border-width = 2
bsp-window-gap = 10
bsp-split-ratio = 0.50
bsp-borderless-monocle = true
bsp-gapless-monocle = true
bsp-paddingless-monocle = true
bsp-single-monocle = false
bsp-focus-follows-pointer = true
bsp-presel-feedback = true

# Exodia OS Setting #
exodia-assistant-auto-start = true
auto-update = true
```

</details>

<details>
   
   <summary><h2> Install new theme </h2></summary>

- you can find here [**`official themes`**](https://github.com/Exodia-OS/bspwm-themes/tree/master/official-themes) and [**`community themes`**](https://github.com/Exodia-OS/bspwm-themes/tree/master/community-themes)
- download the theme and save it in the `~/.config/bspwm/themes` directory
  
</details>

<details>
   
   <summary><h2> How to create your theme </h2></summary>

- go to the theme directory `~/.config/bspwm/themes/`
- choice one of the available themes, then Copy Paste and change the theme name (e.g `my Theme`)
- edit the configuration of the new theme
- take a screenshot of the new theme and save it in `~/.config/bspwm/themes/my Theme/preview.png`

FINALLY, you have created your theme

  ### Contributing

do you want to share your theme?

- Fork [**`bspwm-themes`**](https://github.com/Exodia-OS/bspwm-themes) Repo
- add your theme to the [**`community`**](https://github.com/Exodia-OS/bspwm-themes/tree/master/community-themes) directory
- Commit/Push your changes with [**`push.sh`**](https://github.com/Exodia-OS/bspwm-themes/blob/master/push.sh) script
    - `push.sh -m "added new theme"`
- Submit a pull request
  
</details>