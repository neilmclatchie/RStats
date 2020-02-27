## Mixed ANOVA


## Will usually have to reshape frome wide to long
library(reshape2)
long.dat = melt(wide.dat, 
                id.vars = c("SubjectID", "Between.factor"), 
                measure.vars = c("repeated.level1", "repeated.level2", "repeated.level3"), 
                variable.name = "RM.factor") 


## Incase you want to go from long to wide
wide.data = dcast(long.data, 
                  SubjectID + BS.factor ~ RM.factor) # library(reshape2)


## Calculate mixed ANOVA:
library(afex)
aov = aov_ez(id="ID",   # Subject ID
             dv="value", # Name of DV
             data=dat,  # name of df
             between="between.var", 
             within="within.var",
             type=3,
             anova_table=list(correction="GG", es=c("ges","pes")))  
summary(aov) # View all of the results

library(lsmeans)
lsmeans(aovo, "between.var", contr = "pairwise") # Post-hoc tests for between.var
lsmeans(aovo, "within.var", contr = "pairwise") # Post-hoc tests for jokecond



