## R function for structural breaks search
breakPointSearch <- function(time_series) {
    breakpoints_result <- breakpoints(time_series ~ 1)
    return(breakpoints_result$breakpoints)
}

fstatBreakpointsSearch <- function(time_series) {
    test_result <- Fstats(time_series ~ 1)
    return(breakpoints(test_result)$breakpoints)
}

supmzBreakpointsSearch <- function(data_frame) {
    test_result <- supmz(data_frame ~ 1, data = data_frame)
    print(test_result)
    #return(breakpoints_result$breakpoints)
}