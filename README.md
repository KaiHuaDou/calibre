# Calibre

| 中文  | [English](./README.en-US.md) |
| :---: | :--------------------------: |

## 背景

Calibre 在设计时为保证兼容性，强制将书名转化为 ASCII，例如 “café” -> “cafe”。对于欧洲、美洲国家，这不妨碍阅读和搜索。

但是，对于中日韩以及阿拉伯地区的用户来说，这个设计则是致命性的。实际使用过程中，汉字会被转化为拼音，日语会被转换为罗马音，等等。以中文为例，将拼音作为书名和将国际音标作为书名一样不便。同时，由于 ASCII 化丢弃了所有的声调，所以阅读还需要依赖猜测。其中多音字也会对读取和搜索产生重大影响。

综上所述，我在原有 Calibre 的基础上，修改部分代码，使其不对书名、作者等数据进行强制 ASCII 化，以方便使用象形文字国家的用户使用。

## FAQ

### 为什么没有 Pull Request

Calibre 作者 [kovidgoyal] 在 [pull #1713] 中明确提出：为保证兼容性，不加入该功能。

2022年8月10日，[kovidgoyal] 在 [pull #1713] 的评论：

> The filenames in the calibre library are kept ASCII only by design, for
> maximum robustness across platforms. This is not going to change.

### 为什么没有切换 ASCII 化的选项

使用正常方式（直接运行）启动即可切换回默认 ASCII 模式。

### 如何迁移书库

对书库里的每一本书重命名即可。

### 更新频率

在[主仓库]发布新发行版的 3 天至 14 天内跟进。

## 已知问题

- [GoComics](www.gocomics.com)（`go_comics.recipe`）会产生内部错误
    - 原因：`ascii_filename`函数更名为`format_filename`导致
    - 解决方案：暂无

## 下载

转到 [Releases 页面](https://github.com/KaiHuaDou/calibre/releases/latest) 以下载补丁文件（`calibre.7z`）

## 使用方法

1. 确保已经安装了**对应版本**的 Calibre
2. 确保已经安装了 [Python 3.8+](https://python.org/downloads/) 和 [pip3](https://pip.pypa.io/en/stable/installation/)
3. 将`calibre.7z`的全部内容解压至 Calibre 安装目录下
4. 运行`windows.bat`（Linux 则使用`linux.sh`）

## 自主构建

补丁必须使用 Windows 构建

```bash
git clone https://github.com/KaiHuaDou/calibre.git
cd calibre
ca patch
patch.bat
```

[kovidgoyal]: https://github.com/kovidgoyal
[pull #1713]: https://github.com/kovidgoyal/calibre/pull/1713
[主仓库]: https://github.com/kovidgoyal/calibre
