install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)

FluxData <- read.csv("./Data/AMF_US-SRM_FLUXNET_SUBSET_YY_2004-2023_3-6.csv")

Temp <- FluxData$TA_F

#plot a figure of soil moisture and Temp
SoilTemp <- FluxData %>%
  select(SWC_F_MDS_1, TA_F)

PracticePlot <- ggplot(data = SoilTemp, aes(x = TA_F, y = SWC_F_MDS_1))+
  geom_point()
  
