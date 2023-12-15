# Install and load the strucchange package
invisible(capture.output(install.packages("strucchange", repos = "https://cran.mirror.garr.it/CRAN/")))
invisible(capture.output(install.packages("SupMZ", repos = "https://cran.mirror.garr.it/CRAN/")))
invisible(capture.output(install.packages("tseries", repos = "https://cran.mirror.garr.it/CRAN/")))
invisible(capture.output(install.packages("skewt", repos = "https://cran.mirror.garr.it/CRAN/")))
invisible(capture.output(install.packages("fitdistrplus", repos = "https://cran.mirror.garr.it/CRAN/")))
invisible(capture.output(install.packages("glogis", repos = "https://cran.mirror.garr.it/CRAN/")))

library(strucchange)
library(SupMZ)
library(tseries)
library(skewt)
library(fitdistrplus)
library(glogis)