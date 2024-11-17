# Calibre

| [中文](./README.md) | English |
| :-----------------: | :-----: |

## Background

To ensure compatibility, Calibre is forced to convert book names to ASCII, such as "café" -> "cafe". For European and American countries, this does not hinder reading and searching.

However, for users in China, Japan, South Korea, and the Arab region, this design is fatal. During actual use, Chinese characters will be converted into Pinyin, Japanese characters will be converted into Romaji, and so on. Taking Chinese as an example, using Pinyin as a book title is as inconvenient as using International Phonetic Alphabet as a book title. Also, because asciiization discards all tones, reading still requires guesswork. Polyphonetic words will also have a significant impact on reading and searching.

To sum up, based on the original Caliber, I modified part of the code so that it does not force the ASCII conversion of book titles, authors and other data to facilitate users in countries that use hieroglyphics (languages that do not use letters).

## FAQ

### Why is there no Pull Request?

Caliber author [kovidgoyal] clearly stated in [pull #1713] that this feature will not be added to ensure compatibility.

Comment by [kovidgoyal] on [pull #1713] on August 10, 2022:

> The filenames in the calibre library are kept ASCII only by design, for
> maximum robustness across platforms. This is not going to change.

### Why is there no option to switch asciiize?

Launching normally (direct run) switches back to the default ASCII mode.

### How to migrate the library

Just rename each book in the library.

### Update frequency

Follow up within 3 to 14 days of new releases being released in [main repository].

## Known Problems

- [GoComics](www.gocomics.com) (`go_comics.recipe`) generates an internal error
    - Reason: The `ascii_filename` function was renamed to `format_filename`.
    - Solution: None yet

## Download

Go to [Releases Page](https://github.com/KaiHuaDou/calibre/releases/latest) to download the patch file (`calibre.7z`)

## Instructions

1. Make sure you have installed the **corresponding version** of Calibre
2. Make sure you have installed [Python 3.8+](https://python.org/downloads/) and [pip3](https://pip.pypa.io/en/stable/installation/)
3. Unzip the entire contents of `calibre.7z` to the Calibre installation directory
4. Run `windows.bat` (for Linux, use `linux.sh`)

## Build

Patches must be built with Windows

```bash
git clone https://github.com/KaiHuaDou/calibre.git
cd calibre
ca patch
patch.bat
```

[kovidgoyal]: https://github.com/kovidgoyal
[pull #1713]: https://github.com/kovidgoyal/calibre/pull/1713
[main repository]: https://github.com/KaiHuaDou/calibre
