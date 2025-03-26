# Instalar paquetes
install.packages("psych")
install.packages("CTT")
install.packages("tidyverse")
install.packages("classicaltest")
# Llamar a los paquetes
library(psych)
library(CTT)
library(tidyverse)
library(classicaltest)
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
# 

# Analisis de consistenica interna