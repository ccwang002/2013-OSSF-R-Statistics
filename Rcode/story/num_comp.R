# Number of simulations for each girl
EXP_REP <- 5000

early_arrival_p <- function(girl_n, th) {
  # If any t_i in 1 ... girl_n such that t_i < th,
  # it means at least one bus has arrived in th minutes.
  # We mark this success bus arrival as TRUE event.
  # By repeating EXP_REP times, the rate having TRUE event
  # should approximate to the real possibility.
  exp.sim <- replicate(
    EXP_REP,
    any(rgamma(girl_n, 15, 1) <= th)
  )
  mean(exp.sim)  # return the rate having TRUE event
}

least.prob <- 0.8

# First we guess that N ranges from 1 to 30
which.max(
  sapply(1:30, function(n) early_arrival_p(n, 10)) > least.prob
)

# Theoretically
ceiling(log(1 - least.prob) / log(1 - pgamma(10, 15, 1)))
