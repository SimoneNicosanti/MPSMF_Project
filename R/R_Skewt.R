skewt_fit <- function(data) {
    fitted_skewt <- fitdistrplus::fitdist(data, dskt, start=list(gamma = 1, df = 1), method= "mle")
    summary(fitted_skewt)
    return_list <- list(params = fitted_skewt$estimate, loglik = fitted_skewt$loglik, summary = summary(fitted_skewt))
    return(return_list)
}

skewt_dist <- function(x_points, gamma, df) {
    return(dskt(x_points, df, gamma = gamma))
}

skewt_gen <- function(n, gamma, df) {
    return(rskt(n, df, gamma))
}