download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",
              "data/gapminder-FiveYears.csv")
gapminder <- read.csv("data/gapminder-FiveYears.csv")

library(ggplot2)

# The colourblind-friendly palette with black: (http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/)
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  theme_linedraw() +
  theme(panel.grid = element_blank()) +
  scale_fill_manual(values=cbbPalette[2:6]) +
  scale_color_manual(values=cbbPalette[2:6]) +
  geom_point() +
  geom_smooth(method = "lm") +
  scale_x_log10()

japan_gapminder <- gapminder[gapminder$country == "Japan",]

ggplot(japan_gapminder, aes(x = year, y = lifeExp)) +
  geom_line(color = "coral", size = 3) +
  xlab("Year") + ylab("Life expectancy")
