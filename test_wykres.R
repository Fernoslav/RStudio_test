
library(PogromcyDanych)
library(ggplot2)

data(mtcars)

mtcars$l_per_100km <- 235.214583 / mtcars$mpg

ggplot(data = mtcars, aes(x = factor(cyl), y = l_per_100km)) +
  stat_summary(fun = mean, geom = "bar", fill = "skyblue", color = "black") +
  labs(
    title = "Średnie zużycie paliwa dla różnych liczby cylindrów",
    x = "Liczba cylindrów",
    y = "Średnie zużycie paliwa (l/100km)"
  )
