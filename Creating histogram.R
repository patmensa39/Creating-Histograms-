### CREATING HISTOGRAMS 
### Histogram uses continuous variables 
### using the diamond data set 
if(!require("pacman")) install.packages("pacman") 
if(!require("tidyverse")) install.packages("tidyverse") 
pacman::p_load(pacman, tidyverse) #loading pacman and tidyverse 
 
view(diamonds)
diamonds
str(diamonds)

?hist
hist(diamonds$price)
# Most of the diamonds are at the very low end of the price and this is strongly skewed to the right\

## Histogram in details 
hist(diamonds$price, main = "Histogram of the Price of the Diamonds", 
     sub = "Source : Diamonds dataset from ggplot2", 
     col = rainbow(6), 
     ylab = "Frequencies",
     xlab = "Prices of Diamonds",
     breaks = 8,
     border = NA)

## United States facts and figures 
state.data<-read.csv("StateData.csv")
view(state.data)
str(state.data)

hist(state.data$extraversion,
     main = "Histogram of State Extraversion",
     col = terrain.colors(6),
     breaks = 8,
     xlab = "Extraversion", 
     ylab = "Frequencies",
     sub = "(Source:Philant's dataset)"
)


