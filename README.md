# Calibre

**这是不强制使用 ASCII 文件名的 Calibre 修改版（不会将书名转为拼音），并且永远不会合并到主仓库（[详见此处](https://github.com/kovidgoyal/calibre/pull/1713)）**

| 中文  | [English](./README.en-US.md) |
| :---: | :--------------------------: |

## 下载

转到 [Releases 页面](https://github.com/KaiHuaDou/calibre/releases/latest) 以下载补丁文件（`calibre.7z`）

## 使用方法

1. 将`calibre.7z`的全部内容解压至 Calibre 安装目录下
2. 运行`windows.bat`（Linux 则使用`linux.sh`）

## 自主构建

补丁必须使用 Windows 构建

```bash
git clone https://github.com/KaiHuaDou/calibre.git
cd calibre
ca patch
patch.bat
```
