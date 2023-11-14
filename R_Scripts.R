# Install and load the strucchange package
install.packages("strucchange")
library(strucchange)

## R function for structural breaks search
breakPointSearch <- function(time_series) {
    breakpoints_result <- breakpoints(time_series ~ 1)
    return(breakpoints_result$breakpoints)
}