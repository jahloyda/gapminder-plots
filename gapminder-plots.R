download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",
              "data/gapminder-FiveYears.csv")
gapminder <- read.csv("data/gapminder-FiveYears.csv")

library(ggplot2)

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  geom_point() +
  scale_x_log10()
