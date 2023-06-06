# upfthesis format

## Installing

```bash
quarto use template gongcastro/upfthesis
```

This will install the extension and create an set up the structure of the project. If you are used to working from RStudio, I recommend you create a new project in this same folder.

This directory contains several sub-directories and files:

* [**_quarto.yml**](_quarto.yml): this is a YAML file with the global settings of the thesis. Here you can change the title, authors, department, etc. You can change most settings as indicated in the [Book Options](https://quarto.org/docs/reference/projects/books.html) section of the Quarto reference. Some of these settings are internally set in the [_extension.yml](_extensions/gongcastro/upfthesis/_extension.yml) file; feel free to change them if you know what you are doing. 
* **chapters/** contains the Quarto (`.qmd`) files with the body of the thesis. Each section embedded in a different file. The chapters included are based on the [Theses: Parts and content](https://guiesbibtic.upf.edu/tesis/eng/parts) section of the [Guies BibTIC UPF](https://guiesbibtic.upf.edu/tesis/eng/parts) website. Some of these sections might not be required. If so, you may keep them from being included in the rendered output by removing them from the [**_quarto.yml**](_quarto.yml) file (`chapters:`) section. For example, here I am commenting out the *Preface* section, which is not required:

```yaml
chapters:
  - index.qmd
  - chapters/00-dedication.qmd
  - chapters/01-acknowledgements.qmd
  - chapters/02-abstract.qmd
  #- chapters/03-preface.qmd
  - chapters/04-introduction.qmd
  - chapters/05-chapter-1.qmd
  - chapters/06-chapter-2.qmd
  - chapters/07-discussion.qmd
  - chapters/08-references.qmd
```

> Note that the numeric prefix in each `.qmd` file is only there for convenience: the order in which the files appear in the rendered output is determined by the order in which they appear in `chapters:`. Also, you may place these files wherever you want in the directory (e.g., in the base directory), as long as you indicate their right paths in `chapters:`.

* **img/** contains some images included in the example template. I personally find it more convenient to store all figures in a folder like this). Note that the `.qmd` files will look for the images (and any other refered resource) in the same folder they are located. In this template repository, the `.qmd` files are locating in the `chapters/` folder, so images are found in the parent directory using double dots `../img/image.png`.

* **index.qmd** is an empty file that, for requiremements of the Quarto Project format, must be located at the base directory. This file must also be listed in `chapters:` in the `_quarto.yml` file.
* **references.bib** contains the BibTex references of the thesis. I you are using a reference manager (I strongly recommend using Zotero) you can export you library and replace this file with you desired references. You can also introduce you references manually in BibTex format (e.g., by copy-pasting them from Google Scholar). If you have more tha one `.bib` document or your `.bib` document is named differently, you can do the appropriate changes in the `_quarto.yml` file. For instance, this is how you can indicate more than one `.bib` file:

```yaml
bibliography:
  - references.bib
  - other-references.bib
```

## Using

```bash
quarto render
```

This will render the thesis in PDF and Word formats by default. You can control in which format the thersis is rendered this way:

```bash
quarto render --to upfthesis-pdf
```

If you don't want to render the thesis is either document ever, you can change the default behaviour in the `_quarto.yml` file, by changing:

```yaml
format:
  upfthesis-pdf: default
  upfthesis-docx: default
```

To:

```yaml
format:
  upfthesis-pdf: default
```


