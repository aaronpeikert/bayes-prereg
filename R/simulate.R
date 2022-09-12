library("tidyverse")
source(here::here("R", "funs.R"))
#----measures----
# all formulas taken from Bayesian Philosophy of Science, p. 51
# first letter = function name in Bayesian Philosophy of Science
# optional letter = p for prime
# second letter = m for measure
measures <- list(
  pm = list(
    name = "Posterior Probability",
    formula = "\\frac{P(H)P(E|H)}{P(H)P(E|H) + P(¬H)P(E|¬H)}",
    fun = bayes
  ),
  dm = list(
    name = "Difference Measure",
    formula = "d(H, E) = p(H|E) - p(H)",
    fun = function(h, detectability, theoretical_risk, ...) {
      forbid_additional_args(...)
      he <- bayes(h, detectability, theoretical_risk)
      he - h
    }
  ),
  rm = list(
    name = "Log-Ratio Measure",
    formula = "r(H, E) = log(\\frac{p(H|E)}{p(H)})",
    fun = function(h, detectability, theoretical_risk, ...) {
      forbid_additional_args(...)
      he <- bayes(h, detectability, theoretical_risk)
      log(he / h)
    }
  ),
  lm = list(
    name = "Log-Likelihood Measure",
    formula = "l(H, E) = log(\\frac{p(H|E)}{p(E|\\neg{}H)})",
    fun = function(h, detectability, theoretical_risk, ...) {
      forbid_additional_args(...)
      he <- bayes(h, detectability, theoretical_risk)
      enh <- 1 - theoretical_risk
      log(he / enh)
    }
  ),
  km = list(
    name = "Kemeny–Oppenheim Measure",
    formula = "k(H, E) = \\frac{p(E|H) - p(E|\\neg{}H)}{p(E|H) + p(E|\\neg{}H)}",
    fun = function(h, detectability, theoretical_risk, ...) {
      forbid_additional_args(...)
      eh <- detectability
      enh <- 1 - theoretical_risk
      (eh - enh) / (eh + enh)
    }
  ),
  zm = list(
    name = "Generalized Entailment Measure",
    formula =
      "z(H, E) =\\begin{cases}
  \\frac{p(E|H) - p(H)}{1 - p(H)}, & \\text{if } p(H|E) \\geq{} p(H) \\\\
  \\frac{p(E|H) - p(H)}{p(H)}, & \\text{if } p(H|E) < p(H)
\\end{cases}",
fun = function(h, detectability, theoretical_risk, ...) {
  forbid_additional_args(...)
  he <- bayes(h, detectability, theoretical_risk)
  ifelse(he >= h, (he - h) / (1 - h), (he - h) / h)
}
  ),
sm = list(
  name = "Christensen–Joyce Measure",
  formula = "s(H, E) = p(H|E) - p(H|\\neg{}E)",
  fun = function(h, detectability, theoretical_risk, ...) {
    forbid_additional_args(...)
    he <- bayes(h, detectability, theoretical_risk)
    enh <- 1 - theoretical_risk
    eh <- detectability
    e <- h * eh + (1 - h) * enh
    hne <- (h * (1 - eh)) / (1 - e)
    he - hne
  }
),
cpm = list(
  name = "Carnap’s Relevance Measure",
  formula = "c'(H, E) = p(E)(p(H|E) - p(H))",
  fun = function(h, detectability, theoretical_risk, ...) {
    forbid_additional_args(...)
    he <- bayes(h, detectability, theoretical_risk)
    enh <- 1 - theoretical_risk
    e <- h * detectability + (1 - h) * enh
    e * (he - h)
  }
),
rpm = list(
  name = "Rips Measure",
  formula = "r'(H, E) = 1 - \\frac{p(\\neg{}H|E)}{p(\\neg{}H)}",
  fun = function(h, detectability, theoretical_risk, ...) {
    forbid_additional_args(...)
    he <- bayes(h, detectability, theoretical_risk)
    1 - (1 - he) / (1 - h)
  }
)
)

measures <- tibble(!!!transpose(measures)) %>% 
  mutate(name = simplify(name, "chr"),
         formula = simplify(formula, "chr"))

#----run-simulation----

step <- 0.01

grid <-
  tidyr::expand_grid(
    h = .1,
    detectability = .8,
    tau = seq(step, 1 - step, step)
  )

results <- mutate(measures, results = map(fun, apply_on_grid, grid)) %>% 
  select(-fun) %>% 
  unnest(results) %>% 
  pivot_longer(c(certain, uncertain),
               names_to = "certainty",
               values_to = "value")
fs::dir_create(here::here("data"))
readr::write_rds(results, here::here("data", "simulation.rds"))
