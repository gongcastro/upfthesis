# upfthesis format

This Quarto extension provides a template and format for doctoral dissertations at Universitat Pompeu Fabra (UPF). 

See a rendered example [here](https://github.com/gongcastro/upfthesis/blob/main/_thesis/thesis.pdf).

This template follows the structure and formatting guidelines listed by [Guies BibTIC](https://guiesbibtic.upf.edu/tesis/eng/description):

- Cover
- Title page
- Dedication (optional)
- Acknowledgements (optional)
- Abstract (English and Catalan)
- Preface
- Table of contents
- List of figures (optional)
- List of templates (optional)
- Body of the thesis
- Bibliography
- Glossary (optional)

For now, only the PDF output in B5 (recommended by UPF) is available. If you want to contribute extending this template and formatting to Microsoft Word and Open Document output formats, do not hesitate to contact me, aor to open an issue or pull request. Any other contributions are also welcome! :rocket:

>:bulb: This template does not generate the *cover* of the book. You must request it separately [opening a CAU](https://guiesbibtic.upf.edu/tesis/eng/cover)


## Installing :arrow_down:

[Quarto](https://quarto.org/docs/get-started/) needs to be 1.3.0 or higher.
I also recommend an updated version of [MikTeX](https://miktex.org/howto/install-miktex) complications during compilation.

```bash
quarto use template gongcastro/upfthesis
```

This will install the extension and create an set up the structure of the project. If you are used to working from RStudio, I recommend you create a new project in this same folder.

## Template structure :file_folder:

The downloaded directory contains several sub-directories and files:

* [**_thesis**](_thesis/): contains the rendered thesis dissertation in whichever formats you have specified (e.g., [thesis.pdf](_thesis/thesis.pdf), [thesis.docx](_thesis/thesis.docx))
* [**_quarto.yml**](_quarto.yml): this is a YAML file with the global settings of the thesis. Here you can change the title, authors, department, etc. You can change most settings as indicated in the [Book Options](https://quarto.org/docs/reference/projects/books.html) section of the Quarto reference. Some of these settings are internally set in the [_extension.yml](_extensions/gongcastro/upfthesis/_extension.yml) file; feel free to change them if you know what you are doing. 
* [**chapters/**](chapters/) contains the Quarto (`.qmd`) files with the body of the thesis. Each section embedded in a different file. The chapters included are based on the [Theses: Parts and content](https://guiesbibtic.upf.edu/tesis/eng/parts) section of the [Guies BibTIC UPF](https://guiesbibtic.upf.edu/tesis/eng/parts) website. Some of these sections might not be required. If so, you may keep them from being included in the rendered output by removing them from the [**_quarto.yml**](_quarto.yml) file (`chapters:`) section. For example, here I am commenting out the *Glossary* section, which is not required:

```yaml
chapters:
  - index.qmd
  - chapters/01-introduction.qmd
  - chapters/02-chapter-1.qmd
  - chapters/03-chapter-2.qmd
  - chapters/04-discussion.qmd
  - chapters/05-bibliography.qmd
  #- chapters/06-glossary.qmd
```

> :bulb: Note that the numeric prefix in each `.qmd` file is only there for convenience: the order in which the files appear in the rendered output is determined by the order in which they appear in `chapters:`. Also, you may place these files wherever you want in the directory (e.g., in the base directory), as long as you indicate their right paths in `chapters:`.

* [**img/**](img/) contains some images included in the example template. I personally find it more convenient to store all figures in a folder like this). Note that the `.qmd` files will look for the images (and any other refered resource) in the same folder they are located. In this template repository, the `.qmd` files are locating in the `chapters/` folder, so images are found in the parent directory using double dots `../img/image.png`.

> :bulb: You may create as many folders as you find convenient to store files that will be used in your dissertation. The img/ folder is one of those folders you may delete or rename. Just remember to change the file paths referring to the affected files accordingly.

* [**index.qmd**](index.qmd) is an empty Quarto document that *must* be present in the main directory. Do not move or rename it. Any content inside this document will be rendered as a separate chapter right after the Table of Contents, which is usually not what one wants.This file must also be listed in `chapters:` in the `_quarto.yml` file.
* [**references.bib**](references.bib) contains the BibTex references of the thesis. I you are using a reference manager (I strongly recommend using Zotero) you can export you library and replace this file with you desired references. You can also introduce you references manually in BibTex format (e.g., by copy-pasting them from Google Scholar). If you have more tha one `.bib` document or your `.bib` document is named differently, you can do the appropriate changes in the `_quarto.yml` file. For instance, this is how you can indicate more than one `.bib` file:

```yaml
bibliography:
  - references.bib
  - other-references.bib
```
* [.gitignore](.gitignore): if you are a Git users, you might find this file convenient to avoid committing unwanted documents to your Git history.
* [apa.csl](apa.csl) contains the code necessary to format the citations and bibliography in APA style. You may replace this file by whichever other style you find convenient by replacing [apa.csl](apa.csl) with the corresponding file from the [citation-style-language](https://github.com/citation-style-language/styles/blob/master/apa.csl) repository. Remember to change the path in [**_quarto.yml**](_quarto.yml) if necessary.

## Using :rocket:

To render your dissertation to a PDF, you can use the Quarto command line in your console (Command Prompt/Power Shell in Windows, Terminal in MacOS, and command line in Linux):

```bash
quarto render
```

This will render the thesis in PDF and Word formats by default. You can control in which format the theris is rendered this way:

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

## Tricks and comments

* **Horizontal pages**: this template defines the `\blandscape` and `\elandscape` commands (from the `lscape` LaTeX package) to flip pages to landscape mode. This wway some figures or tables may take more space and be easier to read. This is especially convenient for B5 format.
* **Logo in colour**: To use the logo in colour, just replace the `logo.png` file in the main directory with the official [logo](https://www.upf.edu/web/marca/desc-marca) in colour.
* **Low-level sections**: for some reason, I have not been able to add section headers lower than 5 (e.g., 6, 7). I recommend reducing the number of sub-sections. This is issue is currently open (#7) and help is appreciated.
