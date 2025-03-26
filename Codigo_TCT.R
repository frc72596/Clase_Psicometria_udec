# Instalar paquetes
install.packages("psych")
install.packages("CTT")
install.packages("tidyverse")
install.packages("classicaltest")
install.packages("Amelia")
# Llamar a los paquetes
library(psych)
library(CTT)
library(tidyverse)
library(classicaltest)
library(Amelia)
# Base de datos
data(dichodata)
data(dichokey)
data(polydata)
# Analisis descriptivos
describe(polydata)
summary(polydata)
B1<-correct(dichodata, dichokey, navalue = NA) # Sigue siendo perdido
B2<-correct(dichodata, dichokey, navalue = 0)  # Datos perdidos estan mal
summary(B1)
summary(B2)
# Manejo de los datos perdidos/ Imputación multiple
polydata<-as.data.frame(polydata)
LIKERT<-amelia(polydata,ords = c("item01","item02","item03","item04","item05","item06","item07","item08","item09","item10","item11","item12","item13","item14","item15","item16","item17","item18","item19","item20"))
B_LIKERT<-LIKERT$imputations[[3]]
# Analisis de consistenica interna
alpha(polydata) #alfa con datos perdidos -asegurese de usar la función del paquete psych
alpha(B_LIKERT) #alfa sin datos perdidos- -asegurese de usar la función del paquete psych
reliability(B_LIKERT) #mas indices de consistencia interna sin datos perdidos-  -asegurese de usar la función del paquete psych
itemAnalysis(B1)
itemAnalysis(B2)
dichodata <- na.omit(dichodata)  # Elimina filas con NA
distractorAnalysis(dichodata,dichokey)
# rspP- The proportion of respondents with that response
# pBis- The point-biserial correlation between that reponse and the total score with that item removed
# discrim- The upper proportion minus the lower proportion
# lower- The proportion of respondents choosing that response that are from the lowest score group
# upper- The proportion of respondents choosing that response that are from the highest score group

