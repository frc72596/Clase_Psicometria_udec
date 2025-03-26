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


# Analisis de consistenica interna
reliability(polydata)
alpha(polydata)
