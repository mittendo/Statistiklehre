#### Präsentation Sitzung2 darstellen

rmarkdown::render(input="vignettes/Sitzung2.Rmd", output_dir=tempdir())
browseURL(paste(tempdir(), "Sitzung2.html", sep="/"))