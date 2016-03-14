# a few ploting functions from ggplot 1 class

qplot(displ, hwy, data = mpg, color = drv)

qplot(displ, hwy, data = mpg, color = drv, geom = c("point", "smooth"))

qplot(drv,hwy, data = mpg, geom = "boxplot", color= manufacturer)

qplot(hwy, data = mpg, fill = drv)

qplot(displ, hwy, data = mpg, facets = .~drv) #scatter

# a few ploting functions from ggplot 2 class


g+geom_point() + geom_smooth( method = "lm") + facet_grid(.~drv)

g <- ggplot(mpg, aes(x = displ, y = hwy, color = factor(year)))

g + geom_point() + facet_grid(drv~cyl, margins = TRUE) + geom_smooth(method = "lm", se = FALSE, size = 2, color = "black") + labs(x = "Displacement", y = "Highway Mileage", title = "Swirl Rules!")

# a few ploting functions from ggplot 3 class

qplot(carat,price,data=diamonds, color=cut, facets = .~cut) + geom_smooth(method="lm")

g + geom_point(alpha = 1/3) + facet_grid(cut ~ car2) + geom_smooth(method = "lm", size = 0.5, color = "pink")

