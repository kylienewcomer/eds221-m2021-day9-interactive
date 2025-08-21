rm(list = ls())

library(tidyselect)
library(palmerpenguins)
library(paletteer)


#' My beautiful theme
#'
#' @returns
#' @export
#'
#' @examples my_theme <- function() {ggplot(penguins, aes(flipper_length_mm, body_mass_g)) + my_theme
geom_point(aes(color = species))
ggplot(penguins, aes(flipper_length_mm, body_mass_g)) +
  geom_point(aes(color = species)) +
  labs(x = "Flipper Length (mm)",
       y = "Body mass (g)",
       title = "Palmer penguins body sizes") +
  theme_minimal() 

  my_theme <- function() {theme(panel.background = element_rect(fill = "chartreuse"),
        panel.grid.major = element_line(color = "red"),
        panel.grid.minor = element_line(color = "navy"))}


