SBXG Design Docs
================

This repository contains the documentation design of SBXG.
You will find out here exactly what is SBXG, and how it is designed.

The design document is written in plain LaTeX and can be compiled with
`pdflatex`. You should have `latexmk` and `make` installed, so you can
take profit of our ready-to-use build system.

The PDF version will be available online some day...


Pre-requisites
--------------

- [latexmk](https://www.ctan.org/pkg/latexmk/?lang=en). It is generally
  provided by your favourite package manager.
- A LaTeX distribution.
- `make`, which is a common dependencies tracker tool.


Build the document
------------------

To generate the PDF documentation, the three following commands are equivalent.
Use the one you are more confortable with:
  - `make`
  - `make all`
  - `make pdf`

The document will be produced in the `build/` directory and will be named
`design-doc.pdf`. You can open quickly in a viewer by doing:
  - `make view`
You can specify the `VIEWER` variable in make's environment or in yours to
override the default viewer (`xdg-open`).


For details about available commands, run `make help`.
