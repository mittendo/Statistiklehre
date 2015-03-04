#### Präsentation Sitzung 3 darstellen

rmarkdown::render(input="vignettes/Sitzung3.Rmd", output_dir=tempdir())
browseURL(paste(tempdir(), "Sitzung3.html", sep="/"))