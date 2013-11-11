require(ggplot2)

bus.gamma <- function(t) dgamma(t, 15, 1)
area_intl <- function(t) {
  y <- bus.gamma(t)
  y[t <= 18] <- NA
  return(y)
}
area_intl.2 <- function(t) {
  y <- bus.gamma(t)
  y[t <= 10 |t > 15] <- NA
  return(y)
}
ggplot(data.frame(bus.time = c(0, 50)), aes(bus.time)) + 
  stat_function(fun=area_intl, geom="area", fill="orange", alpha=0.5, n=501) +
  stat_function(fun=area_intl.2, geom="area", fill="blue", alpha=0.2, n=501) +
  stat_function(fun=bus.gamma, n=501) + 
  labs(x="Bus Arrival Time", y="") + theme_bw()

