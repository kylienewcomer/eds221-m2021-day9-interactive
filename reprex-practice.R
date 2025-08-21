library(tidyverse)
library(palmerpenguins)
library(kableExtra)
library(reprex)

#Wrote a bunch of other code


ggplot(penguins, x = flipper_length_mm, y = body_mass_g) +
  geom_point()


#create data to include in reprex
#subset penguins to necessary data

penguins_subset <- penguins %>% 
  select(flipper_length_mm, body_mass_g) %>% 
  slice_head(n=5)

#creating a version of the data to include directly in the code
datapasta::df_paste(penguins_subset)
#creating reprex
#what we are actually going to share
library(tidyverse)
penguins <- data.frame(
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
        body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L)
)
ggplot(penguins, x = flipper_length_mm, y = body_mass_g) +
  geom_point()
\

view(mtcars)
mtcars_subset <- mtcars %>% 
  slice_head(n=5)
datapasta::df_paste(mtcars_subset)

library(tidyverse)
data.frame(
                            row.names = c("Mazda RX4","Mazda RX4 Wag",
                                          "Datsun 710","Hornet 4 Drive",
                                          "Hornet Sportabout"),
         mpg = c(21, 21, 22.8, 21.4, 18.7),
         cyl = c(6, 6, 4, 6, 8),
        disp = c(160, 160, 108, 258, 360),
          hp = c(110, 110, 93, 110, 175),
        drat = c(3.9, 3.9, 3.85, 3.08, 3.15),
          wt = c(2.62, 2.875, 2.32, 3.215, 3.44),
        qsec = c(16.46, 17.02, 18.61, 19.44, 17.02),
          vs = c(0, 0, 1, 1, 0),
          am = c(1, 1, 1, 0, 0),
        gear = c(4, 4, 4, 3, 3),
        carb = c(4, 4, 1, 1, 2)
                         )

mtcars_sum <- mtcars %>% 
  select(mpg, gear, wt) %>% 
  group_by(cyl) %>% 
  summarize(count_cyl = n(),
            mpg_av = mean(mpg),
            wt_av = mean(weight))
head(mtcars
     )
colnames(mtcars)
library(tidyverse)
cars <- data.frame(
  row.names = c("Mazda RX4","Mazda RX4 Wag","Datsun 710",
                "Hornet 4 Drive","Hornet Sportabout","Valiant","Duster 360",
                "Merc 240D","Merc 230","Merc 280","Merc 280C",
                "Merc 450SE","Merc 450SL","Merc 450SLC","Cadillac Fleetwood",
                "Lincoln Continental","Chrysler Imperial","Fiat 128","Honda Civic",
                "Toyota Corolla","Toyota Corona","Dodge Challenger",
                "AMC Javelin","Camaro Z28","Pontiac Firebird","Fiat X1-9",
                "Porsche 914-2","Lotus Europa","Ford Pantera L","Ferrari Dino",
                "Maserati Bora","Volvo 142E"),
  mpg = c(21,21,22.8,21.4,18.7,18.1,14.3,24.4,
          22.8,19.2,17.8,16.4,17.3,15.2,10.4,10.4,14.7,32.4,
          30.4,33.9,21.5,15.5,15.2,13.3,19.2,27.3,26,30.4,15.8,
          19.7,15,21.4),
  gear = c(4,4,4,3,3,3,3,4,4,4,4,3,3,3,3,
           3,3,4,4,4,3,3,3,3,3,4,5,5,5,5,5,4),
  carb = c(4,4,1,1,2,1,4,2,2,4,4,3,3,3,4,
           4,4,1,2,1,1,2,2,4,2,1,2,2,4,6,8,2)
)
cars <- mtcars |>
  select(mpg, gear, carb) |>
  filter(str_detect(1, pattern = "Mazda"))
#> Error in `filter()`:
#> :information_source: In argument: `str_detect(pattern = "Mazda")`.
#> Caused by error in `str_detect()`:
#> ! argument "string" is missing, with no default
  