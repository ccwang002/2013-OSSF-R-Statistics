require(ggplot2)
df <- data.frame(
  norm = c(rnorm(100, 5, 3), rnorm(100, 7, 5)),
  group=c(rep('l', 100), rep('r', 100))
)

ggplot(df, aes(x=norm, fill=group)) + 
  geom_dotplot(binwidth=1, dotsize=0.6, alpha=0.7, color=NA) +
  scale_y_continuous(name = "", breaks=NULL, limits=c(0, 0.2)) +
  scale_fill_brewer(palette="Set1", guide=FALSE) +
  stat_function(fun=dnorm, arg=list(mean=5, sd=3), color='#E41A1C') + 
  stat_function(fun=dnorm, arg=list(mean=7, sd=5), color="#377EB8") + 
  theme_bw()
 
df <- data.frame(
  norm = c(rnorm(100, 5, 2), rnorm(100, 15, 2)),
  group=c(rep('l', 100), rep('r', 100))
)

ggplot(df, aes(x=norm, fill=group)) + 
  geom_dotplot(binwidth=0.5, dotsize=0.6, alpha=0.7, color=NA) +
  scale_y_continuous(name = "", breaks=NULL, limits=c(0, 0.35)) +
  scale_fill_brewer(palette="Set1", guide=FALSE) +
  stat_function(fun=dnorm, arg=list(mean=5, sd=2), color='#E41A1C') + 
  stat_function(fun=dnorm, arg=list(mean=15, sd=2), color="#377EB8") + 
  theme_bw()

