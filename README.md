# Spack Bibliography

This repository contains BibTeX files with citations of publications,
presentations, tutorials, etc. relating to
[Spack](https://github.com/spack/spack)

## Building

You'll need a decent [LaTeX](https://www.latex-project.org/) installation
with `pdflatex` and `bibtex`, as well as `make`.

```
$ make
$ open ./spack-bibliography.pdf
```

## Editing

Bibliography files are in `bib/*.bib` in TeX format.  You can edit any of
these to add new Spack-related events to the repo.

If you need to add a whole new section, look at the structure of
`spack-bibliography.tex`.  We use
[multibib](https://ctan.org/pkg/multibib?lang=en) to build a simple
document with multiple bibliography sections.  You'll need to add a new
`multibib` section and a new file in `bib/`.

## License

Spack is distributed under the terms of both the MIT license and the
Apache License (Version 2.0). Users may choose either license, at their
option.

All new contributions must be made under both the MIT and Apache-2.0
licenses.

See [LICENSE-MIT](https://github.com/spack/spack-bibliography/blob/master/LICENSE-MIT),
[LICENSE-APACHE](https://github.com/spack/spack-bibliography/blob/master/LICENSE-APACHE),
[COPYRIGHT](https://github.com/spack/spack-bibliography/blob/master/COPYRIGHT), and
[NOTICE](https://github.com/spack/spack-bibliography/blob/master/NOTICE) for details.

SPDX-License-Identifier: (Apache-2.0 OR MIT)

LLNL-CODE-647188
