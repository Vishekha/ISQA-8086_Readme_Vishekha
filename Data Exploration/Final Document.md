## Homestead National Monument Water Quality Monitoring
* We have data about Water Quality by Homestead National Monument. We recieved many diffrent spreadsheets from our client which contains the observation of impurities found in Water in the form of Nitrates, sulfates etc, and the associated pH level of water from year 2002 to 2012.The below are some graphical presentation of the observations:-

### Scatter Plot of Two Diffrent Variables
#### Part 1
* The below scatter plot represents the pH level of water observed from year 2002 to 2012.From the plot we assume that there has  been much fluctuations in pH level of the water over the period of ten years.

![ScatterPlot](https://github.com/vishekha1223/ISQA-8086_Data_To_Decision/blob/master/Data%20Exploration/Plots/Scatter%20Plot%20of%20Two%20Diffrent%20Variables-1.png)
>ggplot(DE, aes(Year, pH)) +geom_smooth(se = FALSE) +labs(title = "pH Level of Water over the Year from 2002 to 2012")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))

#### Part 2
* The below scatter plot represents the Nitrate content found in water from the year 2002 to 2012.From the plot we assume that there has  been much fluctuations in the nitrate content found in water from 2007 till 2012.

![ScatterPlot](https://github.com/vishekha1223/ISQA-8086_Data_To_Decision/blob/master/Data%20Exploration/Plots/Scatter%20Plot%20of%20Two%20Diffrent%20Variables-2.png)

>ggplot(DE, aes(Year, Nitrates))+geom_smooth(se = FALSE) +labs(title = "Nitrate Content in Water over the Year from 2002 to 2012")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))

### Scatter Plot of Three Different Variables
* The below scatter plot represents the pH level of water observed in specific Months from the year 2002 till 2012.From the plot we assume that there has not been much fluctuations in pH level of the water over the period of ten years.

![ScatterPlot](https://github.com/vishekha1223/ISQA-8086_Data_To_Decision/blob/master/Data%20Exploration/Plots/Scatter%20Plot%20of%20Three%20Different%20Variables.png)
>ggplot(DE, aes(x=Year, y=pH, color=Month)) +geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+geom_point()+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))


### Scatter Plot of Two Variables with a Trend Line
* The below scatter plot represents the pH level of water observed from the year 2002 to 2012.From the plot we assume that there has not been much fluctuations in pH level of the water over the period of ten years.The plot represents a linear trend model indicating no significant departure from normality.

![Scatter Plot](https://github.com/vishekha1223/ISQA-8086_Data_To_Decision/blob/master/Data%20Exploration/Plots/Scatter%20Plot%20of%20two%20variables%20with%20Trend%20Line.png) 
>ggplot(DE, aes(Year, pH)) +geom_smooth(se = FALSE) +labs(title = "pH Level of Water over the Year from 2002 to 2012")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))+geom_smooth(method=lm,se=FALSE,color="red")


### Faceted Plot of Two Different Variables
* The below faceted plot represents the observations so made for the pH level of water obbserved in specific Months from the year 2002 till 2012. 

![Faceted Plot](https://github.com/vishekha1223/ISQA-8086_Data_To_Decision/blob/master/Data%20Exploration/Plots/Faceted%20Plot%20of%20Two%20variables.png) 
>ggplot(data = DE) + geom_point(mapping = aes(x =Year, y = pH)) + facet_wrap(~ Month, nrow = 2)+ scale_x_continuous(breaks = seq(2002, 2012, by = 10))+scale_y_continuous(breaks=seq(0,25))


### Bar Chart
* The below barchart represents the observations made for the pH level of water and the content of Nitrates found in water over from the year 2002 till 2012.From the plot below, we assume that there has been a major fluctuation in the contents of Nitrates found in water in the year 2007 to 2010.

![BarChart](https://github.com/vishekha1223/ISQA-8086_Data_To_Decision/blob/master/Data%20Exploration/barchart.png) 
>ggplot(data = DE, aes(x =Year , y = pH, fill = Nitrates)) +geom_col(position = position_dodge()) 
