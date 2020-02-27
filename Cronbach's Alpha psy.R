## Cronbach's alpha

# Create a df with the variables of interest
vars <- subset(dat,select=c(var1, var2, var3)) # Creates a df with all 7 of the authentic pride items
names(vars)  # This will confirm you have added the right variables to the dataset

# Calculate Cronbach's alpha
library(psy) # Make sure you have installed and activated the package: psy
cronbach(vars) # Calculates Cronbach's alpha