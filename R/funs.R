forbid_additional_args <- function(...)stopifnot(length(list(...)) == 0L)

#' Apply the Bayes Theorem
#'
#' @param h The prior probability of the hypothesis \eqn{P(H)}.
#' @param detectability The probability of detecting evidence, if hypothesis holds \eqn{P(E|H)}.
#' @param theoretical_risk The probability of not detecting evidence, if hypothesis does not hold \eqn{P(¬E|¬H)}.
#' @param tau Same as `theoretical_risk` for compatibility.
#' @return The posterior probability of the hypothesis after observing evidence \eqn{P(H|E)}.
bayes <- function(h, detectability, theoretical_risk, ...) {
  forbid_additional_args(...)
  true_positive <- h * detectability
  false_positive <- (1 - h) * (1 - theoretical_risk)
  true_positive / (true_positive + false_positive)
}

#' Integrate over uncertain theoretical risk
#' 
#' If theoretical risk is maximally uncertain, we represent this uncertainty
#' as a uniform distribution from zero to tau from which we sample and average the measures.
#'
#' @param tau The guaranteed upper bound of theoretical risk.
#' @param n Number of samples from the uniform distribution.
#' @param seed Optional seed to set before execution. Is reset to global state on exit.
#' @return A function similar to the original
uncertainly <- function(measure, tau, n = 1e5, seed = NULL){
  function(h, detectability, ...){
    forbid_additional_args(...)
    if(!is.null(seed)){
      if(exists(".Random.seed"))on.exit(set.seed(.Random.seed))
      set.seed(seed)
    }
    theoretical_risk_samples <- runif(n, 0, tau)
    mean(measure(h, detectability, theoretical_risk_samples))
  }
}
certainly <- function(measure, tau){
  function(h, detectability, ...){
    forbid_additional_args(...)
    measure(h, detectability, tau)
  }
}

apply_on_grid <- function(f, grid, seed = NULL, n = 1e4) {
  certain <- function(h, detectability, tau, ...){
    forbid_additional_args(...)
    certainly(f, tau)(h, detectability)
  }
  uncertain <- function(h, detectability, tau, ...){
    forbid_additional_args(...)
    uncertainly(f, tau, seed = seed, n = n)(h, detectability)
  }
  mutate(grid,
         certain = pmap_dbl(grid, certain),
         uncertain = pmap_dbl(grid, uncertain))
}
