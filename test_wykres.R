
library(PogromcyDanych)
library(ggplot2)

data(mtcars)


ggplot(data = mtcars, aes(x = factor(cyl), y = mpg)) +
  stat_summary(fun = mean, geom = "bar", fill = "skyblue", color = "black") +
  labs(
    title = "Średnie zużycie paliwa dla różnych liczby cylindrów",
    x = "Liczba cylindrów",
    y = "Średnie zużycie paliwa (mpg)"
  )
