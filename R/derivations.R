library(ggplot2)
library(tidyverse)

pEH = .8
pH = 0.1


c = pH*pEH
d = 1-pH

f <- function(tau){
  c/((1-tau)*d)*log((c+d)/(c+d*tau))
}

f(0.99)

ggplot() + geom_function(fun = f, n = 1000) + xlim(1, 0.01) + ylim(0, 1)

tau = c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)

simulate <- function(tau){
  tau = 1-tau
  X = 1-runif(10000, min = 0, max = tau)
  Y = (0.1*0.8)/(0.1*0.8 + 0.9*X)
  mean(Y)
}

res <- data.frame(tau = tau)
res <- mutate(res, out = map_dbl(tau, simulate))

res %>% 
  ggplot(aes(x = tau, y = out)) +
  geom_point() +
  geom_function(fun = f, n = 1000) + xlim(1, 0.01) + ylim(0, 1)
