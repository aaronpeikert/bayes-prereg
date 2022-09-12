library(tidyverse)
source(here::here("simulate.R"))

#----measure-plots----
plots <- results %>%
  mutate(name = str_remove(name, "Measure")) %>%
  split(., .$name) %>%
  imap(
    ~ ggplot() +
      geom_line(aes(tau, value, linetype = certainty), data = .x) +
      labs(title = .y,
           y = element_blank(),
           x = "$\\tau$") +
      geom_ribbon(
        data = pivot_wider(.x, names_from = certainty, values_from = value),
        aes(x = tau, ymin = uncertain, ymax = certain),
        alpha = .1
      ) +
      NULL
  )
