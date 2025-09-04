# Install packages
install.packages("car")
install.packages("psych")

# Load libraries 
library(car)
library(psych)

# Load and explore data
data(Prestige)
head(Prestige)
summary(Prestige)
str(Prestige)

# Graphic Analysis

# Scatter Plot 
plot(Prestige$education, Prestige$prestige, col ="red",
     ylab = "Prestige", xlab = "Education",
     main = "Scatter plot of Prestige vs Education")

# Correlation
cor(Prestige$education,Prestige$prestige)

# Scatter Plot
plot(Prestige$income, Prestige$prestige, col ="red",
     ylab = "Prestige", xlab = "Income",
     main = "Scatter Plot of Prestige vs Income")

# Correlation 
cor(Prestige$income,Prestige$prestige)

# Scatter Plot 
plot(Prestige$women, Prestige$prestige, col ="red",
     ylab = "Prestige", xlab = "Women",
     main = "Scatter Plot of Prestige vs Women")

# Correlation
cor(Prestige$women,Prestige$prestige)

# Scatter Plot 
plot(Prestige$census, Prestige$prestige, col ="red",
     ylab = "Prestige", xlab = "Census",
     main = "Scatter Plot of Prestige vs Census")

# Correlation
cor(Prestige$census,Prestige$prestige)


# Histograms
par(mfrow =c(1,3))
hist(Prestige$education, col="green", breaks = 15, main ="Histogram of Education", xlab = "Education")
hist(Prestige$income, col="blue", breaks = 15, main = "Histogram of Income", xlab = "Income")
hist(Prestige$women, col="orange", breaks = 15, main ="Histogram of Women", xlab = "Women")
par(mfrow =c(1,2))
hist(Prestige$prestige, col="yellow", breaks = 15, main ="Histogram of Prestige", xlab ="Prestige")
hist(Prestige$census, col="purple", breaks = 15, main ="Histogram of Census", xlab = "Census")

# Bar Charts 

barplot(table(Prestige$type), 
        main = "Distribution of Type",
        xlab = "Type",
        ylab = "Frecuency",
        col = "skyblue",
        ylim = c(0, max(table(Prestige$type)) + 5), 
        border = "black")

# Boxplots
par(mfrow=c(1,5))
boxplot(Prestige$education, col="green",main ="Education")
boxplot(Prestige$income, col="blue", main = "Income")
boxplot(Prestige$women, col="orange", main = "Women")
boxplot(Prestige$prestige, col="yellow", main = "Prestige")
boxplot(Prestige$census, col="purple", main = "Census")

# Remove outliers
g<-boxplot(Prestige$income, col="blue", main = "Income")
Prestige2<-Prestige[!(Prestige$income %in% g$out),]
boxplot(Prestige2$income, col="blue", main = "Income")

# Analysis of the relatioships between variables 

# Correlation matrix 
round(cor(x=Prestige[c(1,2,3,4)]),2)

# Scatter plor matrix and correlation values
prestige_subset <- Prestige[,c("education","income","women","prestige")]
pairs.panels(prestige_subset,gap=0)

# Linear regression model 

# Model 1 with all variables

Mod_1 = lm (prestige ~ ., data = Prestige2)
print(Mod_1)

# Stats
summary(Mod_1)

# Residual analysis
par(mfrow=c(1,2))
plot(Mod_1)
