## R function for structural breaks search
breakPointSearch <- function(time_series) {
    breakpoints_result <- breakpoints(time_series ~ 1)
    # print(breakpoints_result$breakpoints)
    return(breakpoints_result$breakpoints)
}

fstatBreakpointsSearch <- function(time_series) {
    test_result <- Fstats(time_series ~ 1)
    return(breakpoints(test_result)$breakpoints)
}

supmzBreakpointsSearch <- function(time_series) {
    # print(time_series)
    test_result <- supmz(formula = LogClosePrice ~ 1, data = time_series, nBoot = 10)
    return(test_result$BreakLocation)
}

garchResiduals <- function(time_series) {
    model <- garch(time_series, order=c(1,1), series=NULL, coef=NULL, maxiter=200,
        grad="analytical", trace=TRUE, eps=NULL, 
        abstol = max(1e-20, .Machine$double.eps^2),
        reltol = max(1e-10, .Machine$double.eps^(2/3)), 
        xtol = sqrt(.Machine$double.eps),
        falsetol = 1e2 * .Machine$double.eps)
    return(model$residuals)
}