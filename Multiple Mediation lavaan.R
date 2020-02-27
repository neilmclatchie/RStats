## Multiple Mediation

## Load lavaan package
library(lavaan)

## Run multiple mediation analysis
mod <- '
outcome.var ~ b1 * M1.var + b2 * M2.var + b3 * M3.var + c * IV
M1.var ~ a1 * IV
M2.var ~ a2 * IV
M3.var ~ a3 * IV
indirect1 := a1 * b1
indirect2 := a2 * b2
indirect3 := a3 * b3
total    := c + (a1 * b1) + (a2 * b2) + (a3 * b3)
M1.var ~~ M2.var 
M1.var ~~ M3.var
M2.var ~~ M3.var
'
fit <- sem(model = mod, data = w.dat)
summary(fit) 