# Unoffical TU Dresden Slides Extension for Quarto: tud-slides

This repository provides a Quarto extension for creating LaTeX beamer presentations using the unofficial TU Dresden corporate design. It leverages beamer templates from [tud-cd](https://github.com/tud-cd/tud-cd). For more detail on theme options, please refer to the mentioned repository.


## Installing

``` bash
quarto use template gwbrck/tud-slides
```

This will install the extension and create an example qmd file that you can use as a starting place for your slides.

## Using

To use this extension, add the following to the YAML portion of your document:

``` yaml
format:
  tud-slides-beamer: default
```
