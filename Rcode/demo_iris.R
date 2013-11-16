model.iris <- lm(
  Sepal.Length ~ Petal.Length + Petal.Width,
  data=iris
)
summary(model.iris)
confint(model.iris)
