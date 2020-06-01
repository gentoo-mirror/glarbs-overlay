# GLARBS Overlay

> A Gentoo overlay used by GLARBS.

TIP: If you test with a different arch keyword and it works, let me know so I can update the ebuild.

NOTE: These ebuilds are created by me or found on the internet. Credit For those found on the internet are listed below.

NOTE: **Note:**
This is something to note.

## Ebuilds found on the internet

| Ebuild                              | Source           | Maintainer      | Link                                            |
| :---------------------------------- | :--------------- | :-------------- | :---------------------------------------------- |
| media-sound/pamixer                 | Menelkir Overlay | Daniel Menelkir | https://github.com/NuLL3rr0r/gentoo-overlay     |
| app-shells/fast-syntax-highlighting | MV User Overlay  | Martin Vaeth    | https://gitweb.gentoo.org/user/mv.git/          |
| app-misc/lf                         | Crocket Overlay  | Crocket         | https://github.com/crocket/crocket-overlay      |
| app-misc/task-spooler               | Crocket Overlay  | Crocket         | https://github.com/crocket/crocket-overlay      |
| www-client/brave-bin                | Brave Overlay    | Jason Oliveira  | https://gitlab.com/jason.oliveira/brave-overlay |


# How to report bugs

This overlay isn't connected in any way to Gentoo official repositories.
If you are using this repository, please report any issues by using the gitlab issue tracker.

# How To Use This Overlay
## With Layman
Invoke the following:

**root#** `layman -o https://gitlab.com/et-8/glarbs-overlay/-/blob/master/repositories.xml -f -a glarbs-overlay`

Or read the instructions at [the Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman#Adding_custom_repositories).

# Installation
After performing these steps, the following should work (or any other package from this overlay):

**root#** `emerge -av app-misc/lf`

# GLARBS Guide
Visit:[GLARBS at the Gentoo Wiki](https://wiki.gentoo.org/wiki/User:Et-8/GLARBS)

# Gentoo Linux Website
Visit: [gentoo.org](https://gentoo.org)

# LARBS Website
Visit: [larbs.xyz](https://larbs.xyz)
