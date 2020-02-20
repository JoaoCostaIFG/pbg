# Pacman Backup Gist (pbg)

This script and **pacman** hook saves all installed **native and AUR** packages
installed in your machine to 2 **github gists** and updates this information
automatically.  
This small project was heavily inspired in [pug](https://github.com/Ventto/pug) which
pretty much accomplishes the same objectives with some small differences (this project
doesn't use backup files and has some extra functions):

- List packages currently saved in the gists (just pacman natives, just AUR or both)
  (**-s**/**-u** flag);
- Using **-Ss <name>** allows you to search for a given string on your gists (might).
  This is useful because the packages you have uploaded on your gists might be different
  from the ones you have on your computer currently (if syncing different machines);
- Automatically install/uninstall packages to sync your machine with the information
  in the gists (**-f** flag): currently only supports pacman native packages;
- No need to provide your github credentials as **you have the option** to provide
  an access token with gist permissions instead;
- You can check the help text with the: **-h**, **-H**, **-help** or **--help** flags.

## Install

1. Install the **gist** package (if you haven't already)

```sh
sudo pacman -Syu gist
```

2. Clone the repository

```sh
https://github.com/JoaoCostaIFG/pbg.git
```

3. Use the makefile

```sh
sudo make install
```

4. Go through the init process

```sh
sudo pbg
```

5. (optional) Check the help page for details/extra functions

```sh
pbg -h
```
