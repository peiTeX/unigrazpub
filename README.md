# unigrazpub – LaTeX Templates for Graz University Library Publishing

Copyright (C) Marei Peischl (peiTeX)  <marei@peitex.de>, 2022

unigrazpub 2022/10/13 v1.00

***************************************************************************

 This material is subject to the LaTeX Project Public License version 1.3c
 or later. See http://www.latex-project.org/lppl.txt for details.

***************************************************************************

## Provided files

* README.md
* build.lua - build script for l3build
* unigrazpub.dtx and unigrazpub.ins as well as the derived file unigrazpub.cls

and the demo projects within
examples/monografie and examples/sammelband



## Installation Notes

Hopefully unigrazpub will become part of the popular TeX distributions. It will be possible to install the templates using TeX Live Manager or the MikTeX Console. An update of other packages might be required as well.
In case you dont have any installed TeX system the following links might be useful:

- Windows/Linux https://tug.org/texlive/acquire-netinstall.html
- MacTeX  http://tug.org/mactex/

### Use the Repository directly

The repository provides a l3build script. You can build the demo files by running

```
l3build doc
```
This will unpack the package files and build the the docs within `build/`.

To install the files into your local texmf tree run
```
l3build install
```

For further information on l3build and other options please have a look at the corresponding documentation `texdoc l3build`.

## Compilation

The build process requires `lualatex` as a compiler and `biber` for the bibliography. Please ensure to have the correct settings within your LaTeX editor before starting.

## Version History

 * v1.00 (2022-10-13) First CTAN version
