#Library declarations
library(ggplot2)
library(tidyverse)
library(dplyr)
library(maps)
library(flexdashboard)
library(shiny)
library(readxl)
library(car)
library(carData)

data_r_final <- read.csv("C:/Users/Enica Danielle Orné/OneDrive/Desktop/R final/EDO/data_r_final.csv")
print(data_r_final)
dim(data_r_final)
attach(data_r_final)

#Regression Lineaire
REG <-lm(formula=political_stability~Inflation+GDP+market_exchange, data=data_r_final)
summary(REG)
confint.default(REG)
attributes(REG)
REG$coefficients
scatterplot(political_stability~Inflation, data=data_r_final,xlab=Inflation, ylab=political_stability, main="Regression lineaire", RegLine=FALSE,
            ellipse=TRUE, smooth=FALSE, grid=TRUE)
summary(REG)
confint.default(REG)

#Qualite du model
plot(REG)
