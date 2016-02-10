setwd("~/Downloads")
quiz1.data <- read.csv(file = "hw1_data.csv", header = TRUE)
summary(quiz1.data)
quiz1.data[1:2,]
str(quiz1.data)
quiz1.data[(nrow(quiz1.data)-1):nrow(quiz1.data),]
quiz1.data[47,]
sum(is.na(quiz1.data[,1]))
mean(quiz1.data[,1], na.rm = TRUE)
subset.solar <- subset(quiz1.data, Temp>90 & Ozone>31, select = Solar.R)
apply(subset.solar, 2, mean)
subset.temp<- subset(quiz1.data, Month == 6, select = Temp)
apply(subset.temp, 2, mean)
subset.may <- subset(quiz1.data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(subset.may, 2, max)