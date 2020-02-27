## Regression


# Simple regression
model1 <- lm(DV.var ~ IV.var, data = crime.dat)
summary(model1) # 
confint(model1) # 



## Multiple regression
model2 <- lm(DV.var ~IV1.var + IV2.var , data = dat)
summary(model2) 
confint(model2) # 

# Check diagnostic plots
plot(model2)

# Comparing regression models
anova(model1,model2) 
AIC(model1) # 454.43
AIC(model2) # 431.10
BIC(model1) # 459.9785
BIC(model2) # 438.5016

# Create APA formatted table of chosen regression model
apa.reg.boot.table(model2, 
                   filename = "Regression.doc", 
                   table.number = NA,
                   number.samples = 1000)

