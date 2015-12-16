# cjkfonts
A simple XeLaTeX package for typesetting CJK documents

## Dependencies

Download and install a TeX document system for your platform from: http://www.tug.org/.

## Usage

- Clone this repository to a local folder.
- Run `bootstrap.sh` to download the open-source fonts to `fonts/`.
- Drag the `cjkfonts.sty` and `fonts` to your project.
- Add `\usepackage{cjkfonts}` into the preamble of your TeX source file.

You can run `make` to re-comiple the user guide (generate guide.pdf in doc/).

For more information, please check the [user guide](https://github.com/zhanggyb/cjkfonts/blob/master/doc/guide.pdf).

## Sample

Here's a sample page of the PDF after you use cjkfonts, it's also the first page
of the user guide.

![Sample](https://github.com/zhanggyb/cjkfonts/blob/master/doc/sample.png)
