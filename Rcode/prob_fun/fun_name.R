# X ~ Norm(0, 1)
# E[X] = 0, Var[X] = 1
dnorm(0)  # 1/sqrt(2*pi)
dnorm(1)  # exp(-1/2)/sqrt(2*pi)

pnorm(-Inf)
pnorm(0)
pnorm(Inf)

qnorm(1)
qnorm(0.5)
qnorm(0)

# P(9 < X <= 10) = P(X = 10), X ~ Binomial(10, 0.8)
diff(pbinom(c(9,10), size=10, prob=0.8)) == choose(10, 10)*0.8^10
# Oops! Not equal 
all.equal(diff(
  pbinom(c(9,10), size=10, prob=0.8)), 
  choose(10, 10)*0.8^10
)


