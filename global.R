rm(list = ls())
library("shiny")
library("tidyverse")

insurance <- read_csv("insurance.csv")
insurance$sex <- as.factor(insurance$sex)
insurance$smoker <- as.factor(insurance$smoker)
insurance$region <- as.factor(insurance$region)

##SUPRESS WARNINGS IN THE ANALYSIS
options(warn=-1)





