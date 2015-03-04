#### Präsentation Sitzung 4 darstellen

rmarkdown::render(input="vignettes/Sitzung4.Rmd", output_dir=tempdir())
browseURL(paste(tempdir(), "Sitzung4.html", sep="/"))