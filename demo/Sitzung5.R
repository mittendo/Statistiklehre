#### Präsentation Sitzung 5 darstellen

rmarkdown::render(input="vignettes/Sitzung5.Rmd", output_dir=tempdir())
browseURL(paste(tempdir(), "Sitzung5.html", sep="/"))