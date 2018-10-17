
#3)	Create a color codedmap, based on the area of the state 
library("ggplot2")
library("ggmap")
us=map_data("state")
options(scipen=999)
colorMap=ggplot(mergedData, aes(map_id = stateName))
colorMap=colorMap+ geom_map(map = us ,aes(fill= state.area))
colorMap=colorMap+expand_limits(x = us$long, y = us$lat) + coord_map()
colorMap=colorMap+ggtitle("US Color Map")
colorMap
