#devtools::install_github("andreacirilloac/paletter")

library(paletter)


ubdc_palette <- palette_maker("ubdc_logo.jpg", number_of_colors = 32)

#Repeating this brings different results order but in general there are 28 colours
#identified although many of these are very alike. 

ubdc_palette <- palette_maker("ubdc_logo.jpg", number_of_colors = 15)

#Much better option - will need to drop one colour (#FFFFFF) which is basically white

ubdc_palette <- ubdc_palette[ubdc_palette != "#FFFFFF"]

#And now will rearrange manually in a better order

ubdc_palette <- c("#13AFD6", "#E6E600", "#F07329", "#35B14E", "#D7509A", "#2165AF",
                  "#BCD032","#866BAC", "#545A5D",  "#7A8082", "#E2D988", "#628DB7",
                  "#929B9A", "#93B8DA", "#31649B", "#FBF8D0", "#ACB2B4", "#D1DAE2")

#Dropped another 2 colours that were too "white". 


#check it has worked
library(ggplot2)
mtcars$cyl <- as.factor(mtcars$cyl)
sp<-ggplot(mtcars, aes(x=wt, y=mpg, color=cyl)) + geom_point()
sp + scale_color_manual(values= ubdc_palette)



