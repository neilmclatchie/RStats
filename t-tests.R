## t-tests
## Base R



# Indpendent Samples t-test
t.test(DV.var ~ IV.var, data=dat) #  note this is Welch's t-test


# Directional
t.test(DV.var ~ IV.var, data=dat, alternative="less")     # 
t.test(DV.var ~ IV.var, data=dat, alternative="greater")  # 
# alternative = "the first group will be less/greater than the second"

# Non-parametric tests
wilcox.test(DV.var~IV.var, data=dat) # Mann-Whitney U-test
wilcox.test(DV.var~IV.var, data=dat, alternative="greater") # One-tailed
wilcox.test(DV.var~IV.var, data=dat, alternative="less") #  One-tailed


# Paired-samples t-test
t.test(dat$DV.var, dat$DV.var, paired = TRUE) 
wilcox.test(dat$DV.var, dat$DV.var, paired = TRUE)