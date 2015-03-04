#### Einführungspräsentation darstellen

rmarkdown::render(input="vignettes/Einfuehrungspraesentation.Rmd", output_dir=tempdir())
browseURL(paste(tempdir(), "Einfuehrungspraesentation.html", sep="/"))