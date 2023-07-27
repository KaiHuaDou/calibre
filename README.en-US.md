# Calibre

**This is a modified version of Calibre that does not enforce ASCII filenames, and will never be merged into the main repo ([See here](https://github.com/kovidgoyal/calibre/pull/1713))**

| [中文](./README.md) | English |
| :-----------------: | :-----: |

## Download

Go to [Releases Page](https://github.com/KaiHuaDou/calibre/releases/latest) to download the patch file (`calibre.7z`)

## Instructions

1. Make sure you have installed [Python 3.8+](https://python.org/downloads/) and [pip3](https://pip.pypa.io/en/stable/installation/)
2. Unzip the entire contents of `calibre.7z` to the Calibre installation directory
3. Run `windows.bat` (Linux uses `linux.sh`)

## Build

Patches must be built with Windows

```bash
git clone https://github.com/KaiHuaDou/calibre.git
cd calibre
ca patch
patch.bat
```
