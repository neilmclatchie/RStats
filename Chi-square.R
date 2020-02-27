## Chi-square

# To do chi-square, we first need to create a contingency table
# Table is more meaningful if the data has labels added
# Add labels
dat$IV.var <- factor(dat$IV.var, 
                             levels=c(0,1), 
                             labels=c("Non-IV.var", "IV.var")) # Name our levels

dat$DV.var <- factor(dat$DV.var, 
                                      levels=c(0,1), 
                                      labels=c("NotDV.var", "DV.var"))
dat$DV.var


# Create the contingency table
tbl = table(dat$IV.var, dat$DV.var) 
tbl

# Can calculate the % across rows 
prop.table(tbl, margin=1)*100 # Margin = 1 tells R to calculate % across rows
round(prop.table(tbl, margin=1)*100,2) # Rounds to 2 decimal places

# Conduct the chi-square
chisq <- chisq.test(tbl)
chisq # X2 (1) = 5.67, p = .02, significant relationship between IV.var/Not IV.var and High/Not high unemployment

# Warning because one of our cells less than 5
fisher <- fisher.test(tbl)
fisher # p = .29
