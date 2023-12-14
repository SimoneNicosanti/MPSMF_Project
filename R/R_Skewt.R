
breakPointSearch <- function(time_series) {
    breakpoints_result <- breakpoints(time_series ~ 1)
    # print(breakpoints_result$breakpoints)
    return(breakpoints_result$breakpoints)
}

skewt_distribution <- function() {

}

skewt_generation <- function(genNum, freedomDegrees, gamma) {
    return(rskt(genNum, genNum, gamma))
}