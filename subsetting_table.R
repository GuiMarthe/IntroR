

library(datasets)
library(ggplot2)

##subsetting

logico <- airquality$Month == 5

mean(airquality[logico,]$Ozone, na.rm = TRUE)

logico2 <- airquality$Month == 5 & airquality$Wind < 18

mean(airquality[logico2,]$Ozone, na.rm = TRUE)


#tables

quantile(airquality$Temp)

seq(0,1,length = 4)

quantile( airquality$Temp ,seq(0,1,length = 5), na.rm = TRUE)

quantile( airquality$Temp ,seq(0,1,length = 5), na.rm = TRUE) -> pontos.de.corte.temperatura

quantile( airquality$Ozone ,seq(0,1,length = 5), na.rm = TRUE) -> pontos.de.corte.ozone

airquality$Temp.quantil <- cut(airquality$Temp, pontos.de.corte.temperatura)

airquality$Ozone.quantil <- cut(airquality$Ozone, pontos.de.corte.ozone)

table(airquality$Ozone.quantil, airquality$Temp.quantil)

table(airquality$Ozone.quantil, airquality$Temp.quantil, useNA = "ifany")


#plots - airquality

g <- ggplot(airquality, aes(Wind,Ozone))

g + geom_point(size = 2.5) + geom_smooth(method = "lm", color = "blue") + facet_grid(.~Temp.quantil)

airquality$Month <- as.factor(airquality$Month)

levels(airquality$Month)

levels(airquality$Month) <- month.name[5:9]

g + geom_point(size = 2.5) + geom_smooth(method = "lm", color = "blue") + facet_grid(Month~Temp.quantil)

#plots diamonds

qplot(price, data = diamonds)

qplot(price, data = diamonds, geom = c("density"))

qplot(price, data = diamonds, geom = c("density"), color = cut)

qplot(carat, price, data = diamonds, color = cut, ylim = c(0, 20000)) + geom_smooth(method = "lm", size = 3)





