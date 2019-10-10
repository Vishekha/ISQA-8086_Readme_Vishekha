## Homestead National Monument Water Quality Monitoring
* We have data about Water Quality by Homestead National Monument. We recieved many diffrent spreadsheets from our client which contains the observation of impurities found in Water in the form of Nitrates, sulfates etc, and the associated pH level of water from year 2002 to 2012.The below are some graphical presentation of the observations:-

### Scatter Plot of Two Diffrent Variables
>ggplot(DE, aes(Year, pH)) +geom_smooth(se = FALSE) +labs(title = "pH Level of Water over the Year from 2002 to 2012")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))


>ggplot(DE, aes(Year, Nitrates))+geom_smooth(se = FALSE) +labs(title = "Nitrate Content in Water over the Year from 2002 to 2012")+ scale_x_continuous(breaks = seq(2002, 2012, by = 1))<

The graph above shows the level of Nitrate content found in water over the year 2002 to 2012


### Scatter Plot of Three Different Variables


### Scatter Plot of Two Variables with a Trend Line


### Faceted Plot of Two Different Variables


### Bar Chart
