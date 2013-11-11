bus.gamma <- function(t) dgamma(t, 15, 1)
curve(bus.gamma, from=0, to=50)

## For Slide, using ggplot2
require(ggplot2)
ggplot(data.frame(bus.time = c(0, 50)), aes(bus.time)) + 
  stat_function(fun=bus.gamma) + 
  labs(x="Bus Arrival Time", y="") + theme_bw()

## Multiple distributions on same plot
bus.gamma.1 <- function(t) dgamma(t, 7.5, 0.5)
bus.gamma.2 <- function(t) dgamma(t, 15, 1)
bus.gamma.3 <- function(t) dgamma(t, 30, 2)
curve(bus.gamma.3, from=0, to=50, col='green')
curve(bus.gamma.2, from=0, to=50, add=TRUE, col='blue')
curve(bus.gamma.1, from=0, to=50, add=TRUE, col='red')

## Using ggplot2
plot.fn1 <- data.frame(x=c(0, 50), Functions=factor(1))
plot.fn2 <- data.frame(x=c(0, 50), Functions=factor(2))
plot.fn3 <- data.frame(x=c(0, 50), Functions=factor(3))

g <- ggplot(NULL, aes(x=x, colour=Functions)) +
  stat_function(data=plot.fn1, fun=dgamma,
                args=list(shape=7.5, rate=0.5)) + 
  stat_function(data=plot.fn2, fun=dgamma,
                args=list(shape=15, rate=1)) + 
  stat_function(data=plot.fn3, fun=dgamma,
                args=list(shape=30, rate=2))

g + labs(x="Bus Arrival Time", color="Parameters", y="") + 
  scale_color_brewer(palette='Set1', labels=c(
    "a=7.5, b=0.5", "a=15, b=1", "a=30, b=2"
  )) + theme_bw(20) + 
  theme(legend.justification=c(1,1), legend.position=c(1,1))

