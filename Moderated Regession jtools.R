## Moderated Regression
## jtools


## MODERATION ANALYSIS IN R
## USING JTOOLS

## General Format

## Create a Model
name.of.model <- lm(Outcome ~ Predictor * Moderator, data=dataframe.name)   # Create a linear model for your data
name.of.model   # Check to see if there are main effects, and whether the interaction is significant.
sim_slopes(name.of.model, pred = Predictor, modx = Moderator, johnson_neyman = F) # View the slopes for each level of the moderator

## Create a Graph
interact_plot(name.of.model,        # Identify the model being used
              pred = "Predictor",   # Identify the predictor variable (your IV)
              modx = "Moderator",    # Identify the mediator variable
              plot.points = FALSE,    # Can choose whether or not to plot the raw data points
              x.label="Name of Predictor",    # Label the X axis
              y.label="Name of Outcome",      # Label the Y axis
              main.title="Simple slopes: DV=Outcome, Mod=Moderator",    # Give your graph a meaningful name
              legend.main="Social Skills") +            # Give your legen a meaningful name
  theme_apa(legend.pos="topright") +        # Helps to make the graph APA ready
  scale_x_continuous(breaks=c(1,2)) +       # This makes sure there are only two numbers on the X axis (removes 1.5, etc).
  
# Note: scale_x_continuous() is a function from ggplot2. Make sure you have activated that package before trying this.
# Note: This will not work if your Predictor variable is identified as a factor.
  