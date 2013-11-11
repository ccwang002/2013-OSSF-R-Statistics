head(iris)  # a built-in data.frame

# 針對 [row, column] 來篩選
iris[, c('Sepal.Length', 'Petal.Width')]
iris[iris$Species == 'setosa', ]

# 可以使用 & (相當於 AND)和 | (相當於 OR) 來串接條件
iris[iris$Sepal.Length > 7.5 & iris$Petal.Width < 2.2, ]

# subset 有一樣的功能
subset(iris, Sepal.Length > 7.5 & Petal.Width < 2.2)
