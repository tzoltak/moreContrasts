# moreContrasts

## General description

This package provides functions - actually in fact only one function - that enables additional contrasts matrices (than these provided by the *stats* package in the *base* R installation), i.e. ways to encode factors (or character variables) into so-called *dummy-variables* when you use them in statistical models (for example different kind of regressions).

-   `contr.prev` returns contrasts which contrast each level starting from the second with the previous level. Obviously this makes sense rather for an ordered factor. Be aware that these contrasts are **not** orthogonal and consequently are unsuitable to be used with `aov()`.

## Installation

At the moment package is available only on GitHub. The easiest way to install it is using package *remotes* (you can install this package executing: `install.pcakges("remotes")` in your R console):

`remotes::install_github("tzoltak/moreContrasts")`

If you want to cite the package, please use:

Żółtak, Tomasz. (2021). "moreContrasts: additional contrasts matrices". R package version 1.0. <https://github.com/tzoltak/moreContrasts>
