skewt_fit <- function(data) {
    fitted_skewt <- fitdistrplus::fitdist(data, dst, start=list(xi = 1, omega = 1, alpha = 1, nu = 1), method= "mle")
    summary(fitted_skewt)
    return_list <- list(params = fitted_skewt$estimate, loglik = fitted_skewt$loglik, summary = summary(fitted_skewt))
    return(return_list)
}

skewt_dist <- function(x_points, xi, omega, alpha, nu) {
    return(dst(x_points, xi, omega, alpha, nu))
}

skewt_gen <- function(n, xi, omega, alpha, nu) {
    return(rst(n, xi, omega, alpha, nu))
}