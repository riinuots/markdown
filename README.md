# Installation

## 1. R

Download and install the latest version of R from:

https://www.stats.bris.ac.uk/R/

*Windows*: `Download R for Windows` - `base` - `Download R 3.6.1 for Windows`

*Mac*: `Download R for (Mac) OS X` - `R-3.6.1.pkg`

## 2. RStudio

Then download and install RStudio:

https://www.rstudio.com/products/rstudio/download/#download

*Windows*: `RStudio 1.2.1335 - Windows 7+`

*Mac*: `RStudio 1.2.1335 - Mac OS X 10.12+ (64-bit)`

## 3. R packages

### 3.1 Open RStudio and copy-paste the lines below into the Console and press Enter:

```{r}
healthyr_markdown_cran = c("rmarkdown", "tinytex", "tidyverse", "knitr",
                           "remotes", "kableExtra", "gapminder", "shiny", "flexdashboard", "here")
install.packages(healthyr_markdown_cran)
```

### 3.2 Then Restart R

## 3.3 to then run these two lines (same as before, copy-paste to the Console):

```{r}

remotes::install_github("thomasp85/patchwork")
remotes::install_github("rstudio/gt")
tinytex::install_tinytex()

```
