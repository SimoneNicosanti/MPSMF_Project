# Install and load the strucchange package
install.packages("strucchange")
library(strucchange)

breakPointSearch <- function(df, date) {
    breakpoints_result <- breakpoints(time_series ~ 1)
    return(breakpoints_result$breakpoints[, 1])
}