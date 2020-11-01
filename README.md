# GLARBS Overlay

> A Gentoo overlay used by GLARBS.
>
> GLARBS = Luke Smith's LARBS modified for Gentoo by ET-8 and contributors.

**Tip:** If you test with a different arch keyword and it works, let me know so I can update the ebuild.

**Note:** These ebuilds are created by me or found on the internet and edited by me. Credit for the ebuilds found on the internet are listed below.

## Ebuilds found on the internet

| Ebuild                              | Source           | Maintainer             | Link                                               |
| :---------------------------------- | :--------------- | :--------------------- | :------------------------------------------------- |
| media-sound/pamixer                 | Menelkir Overlay | Daniel Menelkir        | https://gitlab.com/menelkir/gentoo-overlay         |
| app-shells/fast-syntax-highlighting | MV User Overlay  | Martin Vaeth           | https://gitweb.gentoo.org/user/mv.git/             |
| app-misc/lf                         | Crocket Overlay  | Crocket                | https://github.com/crocket/crocket-overlay         |
| app-misc/task-spooler               | Crocket Overlay  | Crocket                | https://github.com/crocket/crocket-overlay         |
| www-client/brave-bin                | Brave Overlay    | Jason Oliveira         | https://gitlab.com/jason.oliveira/brave-overlay    |
| media-fonts/joypixels               | Jorgicio Overlay | Jorge Pizarro Callejas |https://github.com/jorgicio/jorgicio-gentoo-overlay |


## How to report bugs

This overlay isn't connected in any way to Gentoo official repository. If you are using this repository, please report any issues by using the gitlab issue tracker.

## How to use this overlay
### With Layman

List contents of the remote list.

**root#** `layman -L`

Update all overlays.

**root#** `layman -S`

#### Add glarbs-overlay automatically

**root#** `layman -a glarbs-overlay`

#### Add glarbs-overlay manually

**root#** `layman -o  https://gitlab.com/et-8/glarbs-overlay/-/raw/master/repositories.xml -f -a glarbs-overlay`

Or read the instructions at [the Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman#Adding_custom_repositories).

## Installation
After performing these steps, the following should work (or any other package from this overlay):

**root#** `emerge --ask --verbose x11-wm/glarbs`

## Install GLARBS guide

Read the [GLARBS](https://wiki.gentoo.org/wiki/User:Et-8/GLARBS) guide on Et-8 Gentoo wiki userspace.

## GLARBS repositories

### GLARBS overlay (this repo.)
Repository: [GLARBS overlay](https://gitlab.com/et-8/glarbs-overlay)

### GLARBS systemfiles
Repository: [Deploy GLARBS](https://gitlab.com/et-8/glarbs-deploy)

### GLARBS dotfiles
Repository: [ GLARBS dotfiles](https://gitlab.com/et-8/glarbs-dotfiles)

### GLARBS dwm
Repository: [ GLARBS dwm](https://gitlab.com/et-8/glarbs-dwm)

### GLARBS dwmblocks
Repository: [ GLARBS dwmblocks](https://gitlab.com/et-8/glarbs-dwmblocks)

### GLARBS dmenu
Repository: [ GLARBS dmenu](https://gitlab.com/et-8/glarbs-dmenu)

### GLARBS St
Repository: [GLARBS st](https://gitlab.com/et-8/glarbs-st)

### GLARBS mutt wizard
Repository: [GLARBS mutt wizard](https://gitlab.com/et-8/glarbs-mutt-wizard)

## Links

### GLARBS website
Visit: [glarbs.xyz](https://glarbs.xyz)

### GLARBS documentation
Visit: [docs.glarbs.xyz](https://docs.glarbs.xyz)

### Gentoo website
Visit: [gentoo.org](https://gentoo.org)

### LARBS website
Visit: [larbs.xyz](https://larbs.xyz)
