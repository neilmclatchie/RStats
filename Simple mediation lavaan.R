## Simple mediation
## lavaan

## Activate mediation package.
library(lavaan) 

## Conduct simple mediation
mod <- '# Note this secion must occur between 2 single quotation marks.
              Mediator.var ~ a*IV.var
              DV.var ~ b*Mediator.var + c*IV.var
 
             indirect := a*b
             direct   := c
             total    := c + (a*b)
'

## View the results
mod.fit <- sem(mod, data = dat) # Fit this model
summary(mod.fit, standardized=T, fit.measures=T, rsq=T) # Summarise with standardized ("Std.lv"), BIC/AIC/etc, and R2.
parameterEstimates(reoffend.fit, boot.ci.type="bca.simple",level=0.95, ci=TRUE,standardized = FALSE) # Estimate CIs.
