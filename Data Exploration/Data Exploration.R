install.packages("tidyverse")
library(tidyverse)



#Scatter Plot of Two Diffrent Variables
ggplot(DE, aes(Year, pH)) +geom_smooth(se = FALSE) +labs(title = "pH Level of Water over the Year from 2002 to 2012",x="Year (2002 to 2012)",y="pH Level in Water")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))
ggplot(DE, aes(Year, Nitrates))+geom_smooth(se = FALSE) +labs(title = "Nitrate Content in Water over the Year from 2002 to 2012",x="Year (2002 to 2012)",y="Nitrate Content in Water(mg/l)")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))

#Scatter Plot of Three Different Variables
ggplot(DE, aes(x=Year, y=pH, color=Month)) +geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+geom_point()+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))+labs(title="pH level values observed in water with respect to month and year")

#Scatter Plot of two variables with Trend Line
ggplot(DE, aes(Year, pH)) +geom_smooth(se = FALSE) +labs(title = "pH Level of Water over the Year from 2002 to 2012")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))+geom_smooth(method=lm,se=FALSE,color="red")

#Faceted Plot of two variables
ggplot(data = DE) + geom_point(mapping = aes(x =Year, y = pH)) + facet_wrap(~ Month, nrow = 2)+ scale_x_continuous(breaks = seq(2002, 2012, by = 10))+scale_y_continuous(breaks=seq(0,25))+labs(title="pH Level of water over the year from 2002 to 2012")

#Bar chart
ggplot(data = DE, aes(x =Year , y = pH, fill = Nitrates)) +geom_col(position = position_dodge()) + labs(title="pH level of water observed for the Nitrates Content over the year 2002 to 2012",fill="Nitrates(mg/l)")+scale_x_continuous(breaks = seq(2002, 2012, by = 1))
