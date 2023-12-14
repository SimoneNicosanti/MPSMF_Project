garchResiduals <- function(time_series) {
    model <- garch(time_series, order=c(1,1), series=NULL, coef=NULL, maxiter=200,
        grad="analytical", trace=TRUE, eps=NULL, 
        abstol = max(1e-20, .Machine$double.eps^2),
        reltol = max(1e-10, .Machine$double.eps^(2/3)), 
        xtol = sqrt(.Machine$double.eps),
        falsetol = 1e2 * .Machine$double.eps)
    return(model$residuals)
}