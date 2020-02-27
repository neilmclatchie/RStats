## Correlation tests

# Conduct a correlation test
cor.test(dat$var1, dat$var2, method = "pearson") # 
cor.test(dat$var1, dat$var2, method = "spearman") # 
cor.test(dat$var1, dat$var2, method = "kendall") # 


# Can create a correlation matrix very easily
corr.dat <- select(dat,var1,var2,var3) # Create a dataframe with variables of interest
names(corr.dat) # Check new dataframe has been created with the correct variables
library(apaTables) # Activate the apaTables package
apa.cor.table(corr.dat, filename="Table1_APA.doc", table.number=1) # Creates APA formatted table in working directory
