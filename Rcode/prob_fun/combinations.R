# nCr = n!/r!(n-r)!
choose
lchoose

factorial
lfactorial

# why need log form?
exp(-1000) / choose(10000, 5) / choose(500000, 10) * exp(1000)
exp(-1000 - lchoose(10000, 5) -lchoose(500000, 10) + 1000)


# sampling
x <- rnorm(1000, mean=1, sd=3)
x.vars <- sapply(
  numeric(1000), 
  function(i) {
    var(sample(x, replace=TRUE))
})
x.vars.ci <- quantile(x.vars, c(0.025, 0.975))
cat("Confidence interval of Var(X) is", x.vars.ci[1:2])
