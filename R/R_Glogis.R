genlogistic_fit <- function(data) {
    fitted_genlogistic <- fitdistrplus::fitdist(data, dglogis, start=list(location = 0, scale = 1, shape = 1), method= "mle")
    confInt <- fitdistrplus::bootdist(fitted_genlogistic, niter = 500)
    return_list <- list(params = fitted_genlogistic$estimate, loglik = fitted_genlogistic$loglik, summary = summary(fitted_genlogistic), confInt = confInt$CI)
    return(return_list)
}

genlogistic_gen <- function(n, location , scale, shape) {
    return(rglogis(n, location = location, scale = scale, shape = shape))
}

genlogistic_dist <- function(x, location , scale, shape) {
    return(dglogis(x, location = location, scale = scale, shape = shape))
}